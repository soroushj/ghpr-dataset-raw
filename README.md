# GHPR Raw Data
Raw data for the [GHPR dataset](https://github.com/soroushj/ghpr-dataset).

This repository contains JSON files that represent issues and pull requests included in the GHPR dataset.
These files are generated by the [GHPR Crawler](https://github.com/soroushj/ghpr-tools#ghpr-crawler).

## Structure
The naming pattern for the files is as follows:
- `/repos/OWNER/REPO/issue-N.json` for issues, e.g., [`/repos/goharbor/harbor/issue-8319.json`](./repos/goharbor/harbor/issue-8319.json)
- `/repos/OWNER/REPO/pull-N.json` for pull requests, e.g., [`/repos/goharbor/harbor/pull-8425.json`](./repos/goharbor/harbor/pull-8425.json)

These JSON objects come from the [GitHub REST API](https://docs.github.com/en/free-pro-team@latest/rest), with one change:
Pull request objects found in this repository have an additional `linked_issue_numbers` property, which is a list of issue numbers in the same repository linked by the pull request using a [GitHub keyword](https://docs.github.com/en/free-pro-team@latest/github/managing-your-work-on-github/linking-a-pull-request-to-an-issue#linking-a-pull-request-to-an-issue-using-a-keyword).

## Data
This version of GHPR contains 13,247 issues and 13,601 pull requests.
The data is collected in October 2020 from [CNCF graduated projects](https://www.cncf.io/projects/), specifically, the following repositories:
| Repository                                                                                | # issues | # PRs |
| ----------------------------------------------------------------------------------------- | --------:| -----:|
| [`containerd/containerd`](https://github.com/containerd/containerd)                       | 332      | 331   |
| [`coredns/coredns`](https://github.com/coredns/coredns)                                   | 220      | 207   |
| [`envoyproxy/envoy`](https://github.com/envoyproxy/envoy)                                 | 1,171    | 1,181 |
| [`fluent/fluentd`](https://github.com/fluent/fluentd)                                     | 161      | 161   |
| [`goharbor/harbor`](https://github.com/goharbor/harbor)                                   | 521      | 466   |
| [`helm/helm`](https://github.com/helm/helm)                                               | 835      | 808   |
| [`jaegertracing/jaeger`](https://github.com/jaegertracing/jaeger)                         | 278      | 390   |
| [`kubernetes/kubernetes`](https://github.com/kubernetes/kubernetes)                       | 7,758    | 7,968 |
| [`prometheus/prometheus`](https://github.com/prometheus/prometheus)                       | 533      | 526   |
| [`rook/rook`](https://github.com/rook/rook)                                               | 847      | 914   |
| [`theupdateframework/specification`](https://github.com/theupdateframework/specification) | 13       | 13    |
| [`tikv/tikv`](https://github.com/tikv/tikv)                                               | 373      | 437   |
| [`vitessio/vitess`](https://github.com/vitessio/vitess)                                   | 205      | 199   |
