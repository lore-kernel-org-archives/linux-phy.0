Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF888C61DBD
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 21:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIBprHnFuAryTi31xwxFyS1MOIIs9sZ/T4UWhyx5RRA=; b=ySKClngE0RoxVn
	Wo3mhy1rJM09A6z2n0uaXXVWK+uUDnnjl3+Lt1Zi44W8FCiuswBKpf+WN92oxIYf40ODgkTEMhUX7
	BxhhpcSN0UrdPB5arm4XG0o3KwjRRUrBmY4ojx0UcnAtpA4Rs2PJwLIuwQ1vsDf6f5cUtePDIUeIE
	tV0qnrQ2rRfI+WAnMbvSJcIITCnjd9q09JpPC19St5mwYCpRJV+0lzoBd1fc7TiOKYe79osR5+X5p
	ApZTHN3U+y/BuAW3aSTN3UIBORH0niI4RsdeObGYXj3JNYWPTI6gaOaLmmB+LOBmYkIf5gJc/erUx
	uDhka83ffLE73dDTQgiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyqv-00000001XyJ-1zG3;
	Tue, 25 Aug 2026 21:38:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyqt-00000001Xy3-2PRR
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 21:38:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EB09441F96;
	Tue, 25 Aug 2026 21:38:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F0631F00A3A;
	Tue, 25 Aug 2026 21:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787693918;
	bh=v/63P4nAiP2NZNcJKQv7CfKfHeePcinJWy54FcxyvhI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oxqpm7af1zJ9HS8eWa8Xt6MJ9odSpbzoZk70yPbsa4WkObkXE9bYsSPuW0deyBRJw
	 mRocvK6Ny/RL5YdsebN0n4Zgr8FBjWqOsF6QMcmbFp1nw6KBHZc/5DcSiUJMFraNpO
	 cuw/R1cbVlEUTyKsJKBaUvCNoPjI5kK43JRiFh4zDlvzkGYy8a4wG3KPoKfC+oy0qq
	 J5PnUqRmkPfsOwIz0da2Wv0NlqjkQi1VN9UB1fFfuiW4Zi+pzTPsvS3CLpnoEeys6x
	 5DQUtzv70NhKa+csyFlvMW7hH70t5Gkue4nH3LSSRKwYle4ZhaemEthabX5BfgtD6I
	 W1tjLFfsGSOmA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 09/12] clk: zte: Introduce a driver for zx297520v3
 top clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, mfd@lists.linux.dev, lee@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260826-zx29clk-v11-9-f8ad59c6426c@gmail.com>
References: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
 <20260826-zx29clk-v11-9-f8ad59c6426c@gmail.com>
Date: Tue, 25 Aug 2026 21:38:37 +0000
Message-Id: <20260825213838.3F0631F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gSW5pdGlhbGl6YXRpb24g
b2YgYSBzdHJ1Y3QgZmllbGQgd2l0aCBhIG5vbi1jb25zdGFudCBleHByZXNzaW9uIGNhdXNlcyBh
IGJ1aWxkIGZhaWx1cmUuCi0tCgpjb21taXQgMWEyMjViNzYxNzRiNTlkMjUwYWQ4MDQ5YjcyZjc5
NzhhOWRjYTI0YgpBdXRob3I6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFp
bC5jb20+CgpjbGs6IHp0ZTogSW50cm9kdWNlIGEgZHJpdmVyIGZvciB6eDI5NzUyMHYzIHRvcCBj
bG9ja3MKClRoaXMgY29tbWl0IGludHJvZHVjZXMgYSBuZXcgY2xvY2sgZHJpdmVyIGZvciB0aGUg
WlRFIHp4Mjk3NTIwdjMgU29DLgpJdCBzdXBwb3J0cyB0aGUgY29uZmlndXJhdGlvbiBvZiBiYXNp
YyBjb3JlIGRldmljZXMsIFBMTHMsIHRoZSBBSEIgYnVzLAp0aW1lcnMsIGFuZCB0aGUgVVNCIGNv
bnRyb2xsZXIuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay96dGUvY2xrLXp4Mjk3NTIwdjMu
YyBiL2RyaXZlcnMvY2xrL3p0ZS9jbGstengyOTc1MjB2My5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi41MDQwNzU1OTBlNmQyCj4gLS0tIC9kZXYvbnVsbAo+
ICsrKyBiL2RyaXZlcnMvY2xrL3p0ZS9jbGstengyOTc1MjB2My5jClsgLi4uIF0KPiArc3RhdGlj
IGNvbnN0IHN0cnVjdCB6eF9jbG9jayB6eDI5NzUyMHYzX3RvcF9jbG9ja3NbXSA9IHsKWyAuLi4g
XQo+ICsJLyoKPiArCSAqICJnIiBpcyBlaXRoZXIgZm9yICJnZW5lcmFsIiBvciAiZ2lnYWhlcnR6
Ii4gVGhlIFZDTyBydW5zIGF0IDEgR0h6LiBPdXRwdXQgY2xvY2tzIGFyZSAyMDAsCj4gKwkgKiAx
MDAsIDUwLCAyNSwgLi4uIE1Iei4gSXQgaXMgdXNlZCBvcHRpb25hbGx5IGJ5IFNESU8gYW5kIFFT
UEkgYW5kIGNhbiBkcml2ZSBhIEdQSU8gY2xvY2sKPiArCSAqIG91dHB1dCBmb3IgUk1JSSwgc28g
aXQgZG9lc24ndCBzZWVtIHZlcnkgZ2VuZXJhbC4KPiArCSAqLwo+ICsJW1pYX0NMS19HUExMXSAg
ICAgICAgICAgICAgPSBQTEwoImdwbGwiLCBjbGtfbWFpbiwgMCwgMHgxMTAsIDApLAo+ICsKPiAr
CS8qIG9zYzI2bSBkaXZpc2lvbiBmb3IgY2xrX291dFggKi8KPiArCVtaWF9DTEtfT1NDMjZNX0Qy
XSAgICAgICAgID0gRklYRURfRElWKCJvc2MyNm0tZDIiLCBjbGtfbWFpblswXSwgMiksCgpbU2V2
ZXJpdHk6IExvd10KV2lsbCB0aGlzIHJlc3VsdCBpbiBhIGJ1aWxkIGZhaWx1cmU/IFRoZSBDIHN0
YW5kYXJkIHJlcXVpcmVzIHRoZSBpbml0aWFsaXplcgpmb3IgYSBzdGF0aWMgc3RydWN0IGZpZWxk
IHRvIGJlIGEgY29uc3RhbnQgZXhwcmVzc2lvbi4gVXNpbmcgdGhlIHZhcmlhYmxlCmNsa19tYWlu
WzBdLCBldmVuIHRob3VnaCBpdCBpcyBkZWNsYXJlZCBhcyBjb25zdCwgbWlnaHQgY2F1c2UgdGhl
IGNvbXBpbGVyCnRvIHJlamVjdCB0aGlzIG5vbi1jb25zdGFudCBleHByZXNzaW9uIGR1cmluZyBp
bml0aWFsaXphdGlvbi4KClsgLi4uIF0KPiArCVtaWF9DTEtfVElNRVJfVDE3X0RJVl0gICAgID0g
RElWKCJ0aW1lci10MTctZGl2IiwgUEFSRU5UX0lEKFpYX0NMS19USU1FUl9UMTdfTVVYKSwKPiAr
CQkJCQkgMHgxMjQsIDAsIDQpLAo+ICsJW1pYX0NMS19XRFRfVDE4X0RJVl0gICAgICAgPSBESVYo
IndkdC10MTgtZGl2IiwgUEFSRU5UX0lEKFpYX0NMS19XRFRfVDE4X01VWCksCj4gKwkJCQkJIDB4
NDgsIDgsIDQpLAo+ICsJW1pYX0NMS19VU0lNMV9ESVZdICAgICAgICAgPSBESVYoInVzaW0xLWRp
diIsIGNsa191bmtub3duLAo+ICsJCQkJCSAweDQ4LCAxMiwgMSksCgpbU2V2ZXJpdHk6IExvd10K
U2ltaWxhcmx5LCB3aWxsIHVzaW5nIHRoZSBjbGtfdW5rbm93biBzdHJ1Y3QgdmFyaWFibGUgaGVy
ZSB0cmlnZ2VyIHRoZSBzYW1lCmNvbXBpbGF0aW9uIGVycm9yIGJlY2F1c2UgaXQgaXMgbm90IGEg
Y29uc3RhbnQgZXhwcmVzc2lvbj8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nh
c2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MjYtengyOWNsay12MTEtMC1mOGFkNTljNjQyNmNA
Z21haWwuY29tP3BhcnQ9OQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
