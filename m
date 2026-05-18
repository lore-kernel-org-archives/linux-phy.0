Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2E89CD4F3C
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 17:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jOSKXr7Cq84TfqpjTJ/k9vRXe1Q9y98DuKTSn7VbuE=; b=rAmm+AD/h6DQxD
	NSRd6ESwdZ2WoHTyt3QBjLVfdHCtTR/qGdEZTRveq520lemBzjV1huZtnXli/dnbiPN2WuIh/YrSo
	PGfDMJpqizdrobBJejtguyTPPSkbvpkcbceOt4zYfL+iS+b+SqSfX7C/6dyGNvlMBlwS6Y4B50/fW
	oy4NVIv9bGtKlzD5DrBW64zmaOVQEm1L8l586XQMc+lmB/fLxVuXZ7RBb2LvSFLqTc1iP/Ik4IVVl
	YK22oviYQg/EPIGyh7Vln8Wf+EDJyjyowns3VCpQeVBe1iHVVo0tq4YLBnUhE+OIYj66ek3hlyung
	sy1sa9ou7GN6/Dmn0q8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP1LC-0000000GMbA-2IOa;
	Mon, 18 May 2026 17:01:18 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP1L9-0000000GMaO-3yy6
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 17:01:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 633B2407AD;
	Mon, 18 May 2026 17:01:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37A43C2BCC9;
	Mon, 18 May 2026 17:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779123675;
	bh=xy0gv9yeC3o3DN69vqcirFBF5EfH7V5AclKXWhDPn+I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=pFLooS1TCagsNTjNwjxobCcpipp/seNhrguWid1vIgohp+R4Py97uOoFpk78GOQj2
	 dcr8zkCP7ZJ9tfn0DCCgnIr8eW2vO7qX9KdgN3hia8pC2QcjxJuSqVJAUF9pjl01kQ
	 /UR9aRFPzp3HQJrpiMZxGyJYadz2WPe0nuWW/tJfWw+zOWv8VnqxwMbvCc2Ag0mGdx
	 qm9ODLQ9jLFK9m0Fmku0UYHJD3jlqDHb3X3GF0crfq3BRcq28SOEMqrX8ZvytVMYr1
	 C1t12CA471aCG1Uu2mxb8G5OAF+VskvUnkAMEV5EQVRytFhwHpVuPJ2A8jTBEo+3R+
	 uacvr0zcMbZxg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V1 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add
 Hawi UFS PHY compatible
To: palash.kambar@oss.qualcomm.com
Cc: robh@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260518165346.1732548-2-palash.kambar@oss.qualcomm.com>
References: <20260518165346.1732548-2-palash.kambar@oss.qualcomm.com>
Date: Mon, 18 May 2026 17:01:13 +0000
Message-Id: <20260518170114.37A43C2BCC9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_100116_009674_EF756FA6 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGBxY29tLGhh
d2ktcW1wLXVmcy1waHlgIGNvbXBhdGlibGUgc3RyaW5nIGlzIG1pc3NpbmcgZnJvbSB0aGUgY29u
ZGl0aW9uYWwgYmxvY2tzIHVuZGVyIGBhbGxPZmAsIGxlYWRpbmcgdG8gaW5jb21wbGV0ZSBzY2hl
bWEgdmFsaWRhdGlvbiBmb3IgY2xvY2tzLgotLQoKY29tbWl0IGVmODFiNjFhMWI0NGY5NGUzYjY4
NDUxYzAwN2NkN2ZjZDdkZmI0MTcKQXV0aG9yOiBQYWxhc2ggS2FtYmFyIDxwYWxhc2gua2FtYmFy
QG9zcy5xdWFsY29tbS5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBxY29tLHNjODI4MHhwLXFtcC11
ZnMtcGh5OiBBZGQgSGF3aSBVRlMgUEhZIGNvbXBhdGlibGUKClRoaXMgY29tbWl0IGRvY3VtZW50
cyB0aGUgUU1QIFVGUyBQSFkgY29tcGF0aWJsZSBzdHJpbmcgZm9yIHRoZSBIYXdpIFNvQy4KCj4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxz
YzgyODB4cC1xbXAtdWZzLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11ZnMtcGh5LnlhbWwKPiBpbmRleCA5NjE2YzczNmI2
ZDQ2Li4yMzI2ZGNmMzhhNDY3IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdWZzLXBoeS55YW1sCj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11ZnMt
cGh5LnlhbWwKPiBAQCAtMzcsNiArMzcsNyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAgICAgICAg
IC0gcWNvbSxrYWFuYXBhbGktcW1wLXVmcy1waHkKPiAgICAgICAgICAgIC0gY29uc3Q6IHFjb20s
c204NzUwLXFtcC11ZnMtcGh5Cj4gICAgICAgIC0gZW51bToKPiArICAgICAgICAgIC0gcWNvbSxo
YXdpLXFtcC11ZnMtcGh5CgpTaG91bGQgcWNvbSxoYXdpLXFtcC11ZnMtcGh5IGFsc28gYmUgYWRk
ZWQgdG8gdGhlIGNvbmRpdGlvbmFsIGJsb2NrcyB1bmRlcgphbGxPZj8KCldoZW4gYSBuZXcgY29t
cGF0aWJsZSBzdHJpbmcgaXMgYWRkZWQgdG8gdGhlIHRvcC1sZXZlbCBjb21wYXRpYmxlIGVudW0g
YnV0Cm9taXR0ZWQgZnJvbSB0aGUgZXhpc3RpbmcgY29uZGl0aW9uYWwgYmxvY2tzLCBpdCBmYWxs
cyBiYWNrIHRvIHRoZSB0b3AtbGV2ZWwKc2NoZW1hIHZhbGlkYXRpb24uCgpUaGlzIGxvb3NlIHZh
bGlkYXRpb24gYWxsb3dzIDIgb3IgMyBjbG9ja3Mgd2l0aCBhbnkgbmFtZXMsIHdoaWNoIG1lYW5z
CmRldmljZSB0cmVlcyBmb3IgdGhlIEhhd2kgUEhZIHdpdGggaW5jb3JyZWN0IG9yIG1pc3Npbmcg
Y2xvY2sgcHJvcGVydGllcwp3aWxsIHNpbGVudGx5IHBhc3MgdmFsaWRhdGlvbi4KCj4gICAgICAg
ICAgICAtIHFjb20sbWlsb3MtcW1wLXVmcy1waHkKPiAgICAgICAgICAgIC0gcWNvbSxtc204OTk2
LXFtcC11ZnMtcGh5Cj4gICAgICAgICAgICAtIHFjb20sbXNtODk5OC1xbXAtdWZzLXBoeQoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MDUxODE2NTM0Ni4xNzMyNTQ4LTEtcGFsYXNoLmthbWJhckBvc3MucXVhbGNvbW0uY29tP3BhcnQ9
MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
