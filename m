Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8801C44539
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 10:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJ/MxfBfzn4aV0KXLeSQB13UepKKMF9+BYE2f0AaePs=; b=Tq8DeUSaTH8EaJ
	SI5P9BfE4OngFx8l3T0XXMZ0vqGGOWHr+19O2D97qJUTSbQN63weRnWiYyLMpvyFNRb4i8E6dbr/L
	XIdk3OzwIAbhk3XGRdR3OORqQWFxBa1hJIpZHztSQ382i8oJ0EStbmRQV64TdIB/v1iwelmQjmNIu
	/Jr3CnXZNOxW920v4wSnfPbPdWwPLoIZpHM7/LLlDNLePQ8RSXc8kVurSUR1XBw2ZTkgFe1ZTvJEh
	EVY1E9HoJ1xRelmr/ZCNYGteyQMiVdOV+teZoNR+L9G770HE6DAmmj3Y9CSfkcFiKS0TkoBbUhwNA
	gKSHB6ImYUGys1yaGZLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmUPm-0000000BaBY-1pfB;
	Wed, 22 Jul 2026 10:43:02 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmUPl-0000000BaBO-2ONo
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 10:43:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E515A600DA;
	Wed, 22 Jul 2026 10:43:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56ECF1F000E9;
	Wed, 22 Jul 2026 10:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784716980;
	bh=pLox4Y/Z0BGWT8IWOs8onwkLqr7YAzr3wC7ymcLWsf8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XLV+Ak/XQQt5EjKj7h+Agf+SZyF6gOiUvf1g90Mz/AP4lfhH/EOQtnVc09h54kLju
	 LFBGdS73SssvvwmNFAOAhzlwPOVpyLtP3IiLDfvNvkphO1tT6pj3b7s9LjVuz5uw96
	 k9eDURarDJBfalCzySFnyAHrJ5V2y9zMVxxoABpe9NZ97/IozxDE8o7yhfg14xhTqR
	 jaDclVZa+1eWRJ619wndmaVOWPX0jcyglWLsWWT/YOS5gF4TD71dpJpdbvkD5PUVI5
	 3Zx3peFq3QKnl3TiQTf/TQiNomzDMrTT1bX+IWLNEcmT1QqhshL5uuhK46Q18/7QHb
	 bWucCBU/kTE4g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: qcom-qmp: qserdes-com: drop duplicate v8 DP
 headers
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260722-qmp-drop-duplicate-v8-v1-1-795eb7de0322@oss.qualcomm.com>
References: <20260722-qmp-drop-duplicate-v8-v1-1-795eb7de0322@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 10:42:59 +0000
Message-Id: <20260722104300.56ECF1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGNvbW1pdCBt
ZXNzYWdlIGluYWNjdXJhdGVseSBjbGFpbXMgdG8gcmV2ZXJ0IGNvbW1pdCBkMTA3MzZkYjk4ZDIs
IGJ1dCBvbmx5IGEgc2luZ2xlIHVudXNlZCBoZWFkZXIgZmlsZSBpcyByZW1vdmVkIHdoaWxlIHRo
ZSByZXN0IG9mIHRoZSBjb21taXQncyBzdWJzdGFudGlhbCBjaGFuZ2VzIGFyZSBsZWZ0IGludGFj
dC4KLS0KCi0tLSBQYXRjaCBbMV06IFtQQVRDSF0gcGh5OiBxY29tLXFtcDogcXNlcmRlcy1jb206
IGRyb3AgZHVwbGljYXRlIHY4IERQIGhlYWRlcnMgLS0tCmNvbW1pdCA0NDZmZmVkYWFkYTM1YjQ5
MDNjZGE0YzEwNzQyZmNhNjk0OThhMDAyCkF1dGhvcjogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5
LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgoKcGh5OiBxY29tLXFtcDogcXNlcmRlcy1jb206
IGRyb3AgZHVwbGljYXRlIHY4IERQIGhlYWRlcnMKClRoaXMgY29tbWl0IHJlbW92ZXMgYSBkdXBs
aWNhdGUgaGVhZGVyIGZpbGUgZm9yIFY4IERpc3BsYXlQb3J0IFFTRVJERVMgQ09NCnJlZ2lzdGVy
cy4gSXQgc3RhdGVzIHRoYXQgaXQgcmV2ZXJ0cyBhIHByZXZpb3VzIGNvbW1pdCB0aGF0IGludHJv
ZHVjZWQgdGhlCmR1cGxpY2F0ZSBoZWFkZXIgYWxvbmdzaWRlIEdseW11ciBwbGF0Zm9ybSBzZXR0
aW5ncy4KCj4gQ29tbWl0IDIxMmNkZWRjYWMxMSAoInBoeTogcWNvbS1xbXA6IHFzZXJkZXMtY29t
OiBBZGQgdjgKPiBEUC1zcGVjaWZpYyBxc2VyZGVzIHJlZ2lzdGVyIG9mZnNldHMiKSBhbmQgY29t
bWl0IGQxMDczNmRiOThkMiAoInBoeToKPiBxdWFsY29tbTogcW1wLWNvbWJvOiBBZGQgRFAgb2Zm
c2V0cyBhbmQgc2V0dGluZ3MgZm9yIEdseW11ciBwbGF0Zm9ybXMiKQo+IGFkZGVkIGlkZW50aWNh
bCBoZWFkZXIgZmlsZXMgZm9yIERpc3BsYXlQb3J0LXNwZWNpZmljIHJlZ2lzdGVycyBvbiBWOAo+
IFBIWXMsIGhhdmluZyBkaWZmZXJlbnQgbmFtZXMuIEdldCByaWQgb2Ygb25lIG9mIHRoZSBjb3Bp
ZXMsIHJldmVydGluZwo+IGNvbW1pdCBkMTA3MzZkYjk4ZDIgKCJwaHk6IHF1YWxjb21tOiBxbXAt
Y29tYm86IEFkZCBEUCBvZmZzZXRzIGFuZAo+IHNldHRpbmdzIGZvciBHbHltdXIgcGxhdGZvcm1z
IikKCltTZXZlcml0eTogTWVkaXVtXQpJcyB0aGlzIGNvbW1pdCBtZXNzYWdlIGFjY3VyYXRlPwoK
SXQgc3RhdGVzIHRoaXMgY29tbWl0IGlzIHJldmVydGluZyBkMTA3MzZkYjk4ZDIgZW50aXJlbHks
IGJ1dCB0aGUgZGlmZgpvbmx5IHJlbW92ZXMgdGhlIGR1cGxpY2F0ZSBoZWFkZXIgZmlsZS4gVGhl
IEdseW11ciBwbGF0Zm9ybSBzZXR0aW5ncyBhbmQKdGFibGVzIChzdWNoIGFzIHFtcF92OF9kcF9z
ZXJkZXNfdGJsIGluCmRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jKSBp
bnRyb2R1Y2VkIGJ5IHRoYXQgY29tbWl0IGFyZQpsZWZ0IGludGFjdC4KCldvdWxkIGl0IGJlIG1v
cmUgcHJlY2lzZSB0byByZXBocmFzZSB0aGlzIHNvIGl0IGRvZXNuJ3Qgc3VnZ2VzdCBhIGZ1bGwK
cmV2ZXJ0PwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDcyMi1xbXAtZHJvcC1kdXBsaWNhdGUtdjgtdjEtMS03OTVlYjdkZTAzMjJA
b3NzLnF1YWxjb21tLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
