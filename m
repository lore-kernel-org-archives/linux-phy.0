Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC954CD5BB0
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 19:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zus4/Xvt1tSdYlYDBVXVum8IGXApFXbaWdot6unahhM=; b=qawtqecebcDl/y
	3aLCurrVENgiVn3hU6Mh9iFfT4WzbETr0EHeG1ROdPRFCdAPxiIINs6PuOS7iliHnalLN8ieQ7AlU
	/XDIgHEP5vywT9BI2nUNWvjR5FdkNI8X3sLvIdKaTyOUSWJiRIqyoq/7DQy/1f3pPDVAbtXheKqbO
	BvckxPcwMkzlwoHFs0bx+dPrKsUFJvtF5qoLyv9GcmbHDH/lhzXhHBDlPkqzreKKXgq+diZ5oyKfG
	92fG398Fw/JgahMKltqJJ97mPl7uoNNseRFeMmA4pJeU6pFRQx78l9AYv+4CLA6dg4ecX3+jsuSkm
	8xKREi7NrHn3GUCvQung==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQVil-0000000BnSL-08XD;
	Fri, 22 May 2026 19:39:47 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQVii-0000000BnRr-2x8y
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 19:39:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1D1EF43D78;
	Fri, 22 May 2026 19:39:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 660811F000E9;
	Fri, 22 May 2026 19:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779478784;
	bh=FJ1RnWOdPsO+HzyStJwnpYjnLxxCs8J71dBVx2Om484=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ngomBUqZFBcPMrgKUJ08WvSxtBRJLy7qcgKrM0/DS0iXt+l00rQyP8oK3a+np41aF
	 4AUUouG112nCiYCuo+6vqwq3Va+4OWA/caBpKyEq4mEnywr/WOVbIO0LAxCKF7JELt
	 loNToJtV84788iNzSZmt0yRLPKAGEUuTD0En+aVolXumYYlo6d+NQ+RvQuH5SuMd+K
	 ssBBokiMnJUt914/LaNXwjy3hXi/fTdQoyJXOh77FOoSOHIttrzqDI6naB0bv5BXWT
	 6ZapCn1GTwIL8g1k4a6UuhEsg2ED8EJbQQTZ6wa30qY4NAvATrHjcRZ7j7Qcn0Z3eV
	 B3galgDDIAgrw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: Add Shikra EVK boards
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: vkoul@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org
In-Reply-To: <20260522-shikra-dt-v3-5-80ffde8a3dc4@oss.qualcomm.com>
References: <20260522-shikra-dt-v3-5-80ffde8a3dc4@oss.qualcomm.com>
Date: Fri, 22 May 2026 19:39:43 +0000
Message-Id: <20260522193943.660811F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_123944_761105_7360040E 
X-CRM114-Status: GOOD (  11.23  )
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBkZXZpY2UgdHJl
ZSBmaWxlIHNoaWtyYS1jcXMtZXZrLmR0cyBpbmNvcnJlY3RseSBpbmNsdWRlcyB0aGUgQ1FNIFNv
TSBkZXZpY2UgdHJlZSAoc2hpa3JhLWNxbS1zb20uZHRzaSkgaW5zdGVhZCBvZiB0aGUgZXhwZWN0
ZWQgQ1FTIFNvTSBkZXZpY2UgdHJlZSAoc2hpa3JhLWNxcy1zb20uZHRzaSkuCi0tCgpjb21taXQg
Y2I5ZmY5Yzc2ZjRlZTAxOTExMzEzODIzN2Y1Nzc5NGZhNjIxZDcxZgpBdXRob3I6IEtvbWFsIEJh
amFqIDxrb21hbC5iYWphakBvc3MucXVhbGNvbW0uY29tPgoKYXJtNjQ6IGR0czogcWNvbTogQWRk
IFNoaWtyYSBFVksgYm9hcmRzCgpUaGlzIGNvbW1pdCBhZGRzIGRldmljZSB0cmVlcyBmb3IgdGhl
IFNoaWtyYSBFVksgcGxhdGZvcm0sIGNvbWJpbmluZwpTaGlrcmEgU29NIHZhcmlhbnRzIHdpdGgg
YSBjb21tb24gY2FycmllciBib2FyZC4gSXQgaW50cm9kdWNlcyB0aHJlZSBFVksKYm9hcmRzOiBD
UU0gKHJldGFpbCB3aXRoIG1vZGVtKSwgQ1FTIChyZXRhaWwgd2l0aG91dCBtb2RlbSksIGFuZCBJ
UVMKKGluZHVzdHJpYWwgd2l0aG91dCBtb2RlbSkuCgpbIC4uLiBdCgo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxcy1ldmsuZHRzIGIvYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL3NoaWtyYS1jcXMtZXZrLmR0cwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4g
aW5kZXggMDAwMDAwMDAwMDAwMC4uYjNmMTlhNjRkN2FlZAo+IC0tLSAvZGV2L251bGwKPiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxcy1ldmsuZHRzCj4gQEAgLTAsMCAr
MSw0MCBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogQlNELTMtQ2xhdXNlCj4gKy8q
Cj4gKyAqIENvcHlyaWdodCAoYykgUXVhbGNvbW0gVGVjaG5vbG9naWVzLCBJbmMuIGFuZC9vciBp
dHMgc3Vic2lkaWFyaWVzLgo+ICsgKi8KPiArCj4gKy9kdHMtdjEvOwo+ICsKPiArI2luY2x1ZGUg
InNoaWtyYS1jcW0tc29tLmR0c2kiCgpbU2V2ZXJpdHk6IEhpZ2hdClRoZSBjb21taXQgbWVzc2Fn
ZSBzdGF0ZXMgdGhhdCBzaGlrcmEtY3FzLWV2ay5kdHMgcGFpcnMgd2l0aCB0aGUgQ1EyMzkwUwpT
b00gKHJldGFpbCwgd2l0aG91dCBtb2RlbSkuIERvZXMgdGhpcyBmaWxlIGluY2x1ZGUgdGhlIGlu
Y29ycmVjdCBTb00gZHRzaT8KCkluY2x1ZGluZyBzaGlrcmEtY3FtLXNvbS5kdHNpIGhlcmUgc2Vl
bXMgbGlrZSBpdCB3b3VsZCBwdWxsIGluIHRoZSBoYXJkd2FyZQpkZXNjcmlwdGlvbiBvZiB0aGUg
bW9kZW0tZW5hYmxlZCBDUU0gU29NIGluc3RlYWQgb2YgdGhlIGV4cGVjdGVkIENRUyB2YXJpYW50
LgoKQ291bGQgdGhpcyBjYXVzZSBib290IGlzc3VlcyBvciBsZWFkIHRvIGxvYWRpbmcgZHJpdmVy
cyBmb3IgaGFyZHdhcmUgdGhhdAppc24ndCBhY3R1YWxseSBwcmVzZW50IG9uIHRoZSBDUVMgYm9h
cmQ/Cgo+ICsjaW5jbHVkZSAic2hpa3JhLWV2ay5kdHNpIgo+ICsKPiArLyB7Cj4gKwltb2RlbCA9
ICJRdWFsY29tbSBUZWNobm9sb2dpZXMsIEluYy4gU2hpa3JhIENRUyBFVksiOwo+ICsJY29tcGF0
aWJsZSA9ICJxY29tLHNoaWtyYS1jcXMtZXZrIiwgInFjb20sc2hpa3JhLWNxcy1zb20iLCAicWNv
bSxzaGlrcmEiOwoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUyMi1zaGlrcmEtZHQtdjMtMC04MGZmZGU4YTNkYzRA
b3NzLnF1YWxjb21tLmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
