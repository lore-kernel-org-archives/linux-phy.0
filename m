Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2C44CA6019
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOH1xI7EpZ5Q29vBqtgzT6V4lxkGMHqDCU5Flljn9sQ=; b=2Amw5das4c+4Zp
	T1bsg63c0EFK007bO9aCTTQTskAMl+OW9GGPWT9P1QqGsx3nvWGwYdfswI6qGTTS1bTp3pzCGYK6t
	kNR/Ow82v3Tv20DLE6yHxzkcjJ5NGKEuuGjjFMXXNowraiUnlHGi74oNQZTi43XF5ZR9s5vIGgH9r
	WVjKoaJi3/nfKyIciBWV6TCcjdHlFXY8SXNKHYYNz79x21fQy7w22sYZzNI6+NKQQx6/rWXpjF+yr
	ImMB5CRRM/JT7eXhnR7RMXz96bzktCamfOkD3ZeeTXzcatfJNuvpvPBXylHu2oYwgsOJK13zMh+bj
	jLQbfpY0qBIt3S55lH8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF89l-000000066a9-0PUh;
	Fri, 09 Oct 2026 10:48:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF89k-000000066Zt-1E2j
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 10:48:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BCB844185B;
	Fri,  9 Oct 2026 10:48:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C26B1F0089B;
	Fri,  9 Oct 2026 10:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791542931;
	bh=Yj19hqBWFoDeHd/sJCxG3+F2qK0LAHRVQu3vZzeZC7I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PfjkJgxdsuX6q2hLoJZDnS1a/CAy6DompnqdspvlCUqsnS+65D+3pWtUSXhM8HRNL
	 kiUWO887e5jIDjDv/fR3Xnuqb0Er2WzAMs/5CHGk6KQHwR6CA5xtfdIcvdKArblYpX
	 7m9QEs/Iujy0238Bc/cA77jl9gH2qPcAIW2qMfXbBNeF/xAwkfynhU5OL6RaFcjAPM
	 fUYM9azg2LN2jFQ8bWoQKT8Ij0XfHr4TTeQp1PGdqdjmlAezfMmOzgjT9/Q+MR3jt3
	 hF/uPi5H9B8j7wGg2MxGCSaJKpt0UWA4S66cti+APmI6wSDtbUgiEUQxQg3eHcq5lX
	 Sr+lXgbbWLa+g==
Message-ID: <sashiko-outbox-165269@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/5] scsi: ufs: qcom: dt-bindings: Document Glymur
 UFS controller
To: "Pradeep P V K" <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, linux-scsi@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20261009-glymur_ufs_qcb_enablement-v4-2-9a6ce83195b7@oss.qualcomm.com>
References: <20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com>
 <20261009-glymur_ufs_qcb_enablement-v4-2-9a6ce83195b7@oss.qualcomm.com>
Date: Fri, 09 Oct 2026 10:48:50 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IHVm
czogbWlzc2luZyBjb3JyZXNwb25kaW5nIFFNUCBQSFkgYmluZGluZyBmb3IgZ2x5bXVyCi0tCgpj
b21taXQgYTkzYmMyMmFhMDUwMmYwMTI3MDVjYWMwYWZiMGZkZGExZjEwNTJjZgpBdXRob3I6IFBy
YWRlZXAgUCBWIEsgPHByYWRlZXAucHJhZ2FsbGFwYXRpQG9zcy5xdWFsY29tbS5jb20+CgpzY3Np
OiB1ZnM6IHFjb206IGR0LWJpbmRpbmdzOiBEb2N1bWVudCBHbHltdXIgVUZTIGNvbnRyb2xsZXIK
ClRoaXMgY29tbWl0IGRvY3VtZW50cyB0aGUgVUZTIEhvc3QgQ29udHJvbGxlciBvbiB0aGUgR2x5
bXVyIFNvQy4gSXQgYWRkcyB0aGUKcWNvbSxnbHltdXItdWZzaGMgY29tcGF0aWJsZSBzdHJpbmcg
dG8gdGhlIFFDT00gU004NjUwIFVGUyBob3N0IGNvbnRyb2xsZXIKc2NoZW1hLgoKPiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHNtODY1MC11
ZnNoYy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHNt
ODY1MC11ZnNoYy55YW1sCj4gaW5kZXggZDAzMjk1ODA2NjU3Zi4uZjEzMmIxYTllYmMyOCAxMDA2
NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sc204
NjUwLXVmc2hjLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
dWZzL3Fjb20sc204NjUwLXVmc2hjLnlhbWwKPiBAQCAtMTYsNiArMTYsNyBAQCBzZWxlY3Q6Cj4g
ICAgICAgIGNvbnRhaW5zOgo+ICAgICAgICAgIGVudW06Cj4gICAgICAgICAgICAtIHFjb20sZWxp
emEtdWZzaGMKPiArICAgICAgICAgIC0gcWNvbSxnbHltdXItdWZzaGMKCltTZXZlcml0eTogTG93
XQpVRlMgaGFyZHdhcmUgb24gUXVhbGNvbW0gU29DcyByZXF1aXJlcyBib3RoIGEgaG9zdCBjb250
cm9sbGVyIGFuZCBhCmNvcnJlc3BvbmRpbmcgUU1QIFBIWS4KClRoaXMgY29tbWl0IGFkZHMgdGhl
IGhvc3QgY29udHJvbGxlciBjb21wYXRpYmxlIHN0cmluZyBxY29tLGdseW11ci11ZnNoYywgYW5k
CmEgc3Vic2VxdWVudCBwYXRjaCBpbiB0aGlzIHNlcmllcyBpbnRyb2R1Y2VzIHRoZSBQSFkgZHJp
dmVyIHN1cHBvcnQgZm9yCnFjb20sZ2x5bXVyLXFtcC11ZnMtcGh5IGluIGRyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYy4KCkhvd2V2ZXIsIGRvZXMgdGhpcyBzZXJpZXMgYWxz
byBuZWVkIHRvIGFkZCBxY29tLGdseW11ci1xbXAtdWZzLXBoeSB0byB0aGUgUEhZCmRldmljZSB0
cmVlIGJpbmRpbmdzPyBBcyBpdCBzdGFuZHMsIGRldmljZSB0cmVlIGF1dGhvcnMgY2Fubm90IHZh
bGlkbHkgZGVjbGFyZQp0aGUgUEhZIG5vZGUgZm9yIHRoZSBHbHltdXIgU29DIHdpdGhvdXQgZmFp
bGluZyBzY2hlbWEgdmFsaWRhdGlvbi4KCj4gICAgICAgICAgICAtIHFjb20saGF3aS11ZnNoYwo+
ICAgICAgICAgICAgLSBxY29tLGthYW5hcGFsaS11ZnNoYwoKWyAuLi4gXQoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAwOS1nbHlt
dXJfdWZzX3FjYl9lbmFibGVtZW50LXY0LTAtOWE2Y2U4MzE5NWI3QG9zcy5xdWFsY29tbS5jb20/
cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
