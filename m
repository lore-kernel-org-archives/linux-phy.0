Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50B6CC3DA79
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 21:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tojUv4f1Kd1rqZ95dHpLHnX5WUoj+USN3xcgYRK0Oq4=; b=NQDg3NbTOTIggG
	Lu75HvWEHoaKJn+kjgGzThv86Pb4W13ND5TJdt7/xeIbHVCVWKnVyTPPIiLxIXjkAlYM9bp+Ns8Wq
	Ny7KbUPKbHXXI5lFsAP9EyZduCtNDBuZKCPIaKqTmEKw372w94hoq9Si2uPO+Jg4MK33N/fVS7Jp0
	mtu50TjAExAyK3wAkGb0lVM84z87iwzF98feEfkV9nMSABYuaz18iZJYfGuclKBBgYKbkgJsHE2Tj
	4zLeTOaIdVN5+gqS7iO4fV3jblN4p1IQNuvejBSKlqhW22M48iA4LjYFkuk4OXmjDxi5hAoMGPwxs
	07ixye2Hv8qqv6udm/mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pB0ee-002KyY-HY; Thu, 29 Dec 2022 21:41:36 +0000
Received: from mo4-p02-ob.smtp.rzone.de ([85.215.255.81])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pB0eb-002Kwt-FE
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 21:41:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1672350091;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=FCYu/+2jwjS7Uakcb1o/IFHjx95os9NV5cCdt0qqmk8=;
    b=KHZEnWSD93VHbRpn+w8cWpmVwvFEi0phNEmA+U/yDBBm/sFOOw9waFX5bRGoUBykfJ
    ZYy018apK3SS3Vv75pqE5DPIBwwuexceGl1dT9EM0qFuR3rD3x0xR1FoJLvFe5wDRHDX
    KWwki68lyyzmD+w2h3WsFXDbsE4D01P9TGyzVekZHg7SBuBUkLd3BY2QvwkMpgBPWhUR
    k0tsy4hDeBCzondU4TAfqAgLji187irI5e1jAHFcpenKmspGKb0r3OTdFdCP30WGQiWP
    lHX3HstFw5DcblnKS6JqpLhH4MiKfQf96qIb3WnTzqF2irDAi5dHaED0tpgrUsdXsb63
    XDPw==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJAhdlWyvDI"
X-RZG-CLASS-ID: mo00
Received: from gerhold.net
    by smtp.strato.de (RZmta 48.2.1 DYNA|AUTH)
    with ESMTPSA id Yce349yBTLfTXsA
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Thu, 29 Dec 2022 22:41:29 +0100 (CET)
Date: Thu, 29 Dec 2022 22:41:22 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: agross@kernel.org, andersson@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: qcom-usb-hs: Add qcom,dp-manual-pullup logic
Message-ID: <Y64Jgu2o6aJV4ggk@gerhold.net>
References: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
 <20221229183410.683584-3-bryan.odonoghue@linaro.org>
 <Y63uSgMdP4m6nvhL@gerhold.net>
 <Y64AfHcUw192Pyr6@gerhold.net>
 <6061938c-b830-2fe0-2f4d-368e34c33676@linaro.org>
 <Y64CaOzWZXERrvkz@gerhold.net>
 <cdcef656-1ae7-fe8a-a4dd-3547d6395b33@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cdcef656-1ae7-fe8a-a4dd-3547d6395b33@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_134133_877041_A1667097 
X-CRM114-Status: GOOD (  12.92  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBEZWMgMjksIDIwMjIgYXQgMDk6MjA6MDNQTSArMDAwMCwgQnJ5YW4gTydEb25vZ2h1
ZSB3cm90ZToKPiBPbiAyOS8xMi8yMDIyIDIxOjExLCBTdGVwaGFuIEdlcmhvbGQgd3JvdGU6Cj4g
PiBUaGVuIGl0IGRvZXNuJ3Qgc2VlbSB0byBiZSBhIHBhcnRpY3VsYXJseSBjb21wbGV0ZSBzY2hl
bWF0aWMuIPCfmIQKPiA+IFBNODkxNiBkZWZpbml0ZWx5IGhhcyBVU0JfSU4gcGFkcyAocGFkICMg
TjEzLCBQMTMpLiDwn5iECj4gCj4gTGV0IG1lIGNoZWNrIGFnYWluLgo+IAo+IE5vIHNvcnJ5IFVT
Ql9JTl8wIGFuZCBVU0JfSU5fMSBhcmUgY29ubmVjdGVkIHRvICs1ViBpbiBteSBzY2hlbWF0aWMs
IEkgZGlkCj4gY2hlY2sgVVNCX0lOIEkganVzdCBmb3Jnb3Qgd2h5IGl0IHdhc24ndCB1c2FibGUu
Li4gKzV2IG5vdCBWQlVTIGlzIHdoYXQgaXRzCj4gY29ubmVjdGVkIHRvLgo+IAoKVGhhdCBpcyBz
dGlsbCBnb29kIGVub3VnaCB0byByZXBsYWNlIHFjb20sZHAtbWFudWFsLXB1bGx1cCB0aG91Z2gu
CgpJZiB5b3UgaGF2ZSArNVYgY29ubmVjdGVkIHRvIFVTQl9JTiB0aGVuICZwbTg5MTZfdXNiaW4g
c2hvdWxkIHJlcG9ydAphY3RpdmUgVkJVUyBwZXJtYW5lbnRseS4gU2V0IGl0IGFzIGV4dGNvbiBm
b3IgJnVzYiBhbmQgJnVzYl9oc19waHkgYW5kCnlvdSBzaG91bGQgaGF2ZSBWQlVTVkxERVhUICJw
dWxsZWQtdXAiIGxpa2UgaW4geW91ciBwYXRjaCBoZXJlLCB3aXRob3V0CmFueSBkcml2ZXIgY2hh
bmdlcy4gOi0pCgpJdCdzIGEgYml0IG9mIGEgaGFjayBvZiBjb3Vyc2UsIHdoaWNoIHByb2JhYmx5
IGRlc2VydmVzIGEgY29tbWVudCBpbiB0aGUKZGV2aWNlIHRyZWUuIEJ1dCBzaW5jZSBpdCBzaG91
bGQgbm90IG1ha2UgYW55IGZ1bmN0aW9uYWwgZGlmZmVyZW5jZQpjb21wYXJlZCB0byB0aGlzIHBh
dGNoIHRoZSBhcHByb2FjaCBtaWdodCBiZSBlYXNpZXIgdGhhbiBnZXR0aW5nIHRoaXMKcGF0Y2gg
ZmluYWxpemVkICYgYWNjZXB0ZWQuCgpJIGxlYXZlIHRoYXQgdXAgdG8geW91IDopCgpTdGVwaGFu
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
