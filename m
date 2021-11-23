Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54402C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 19:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AkZw1ooHJwmeLhw5g8aq47ZFW7jK44PC8IJW+dTuibA=; b=HUYlCuy65BmXE1c2yyo7htzgYq
	Qti+QPwwRk5d8C92DCGvWXXYgVOZLpDKnVMUDmFQxSbncUtSfYGjGdovcmw85t2KpSxyfc7UVAT1V
	qVk+5DD+Aql1MBoN2it7ylSBNmNPr7X8eTiB6MPXsxrSMaYObJMAYziCdwvAej+Jsmr/WWrifFuNi
	Igy41o/yOXOe1vLWx8+0Etf08PQEmuEZGdc8e9HmIvpDMkro+4PliWI+aoMQJKS/cUL3EFgcpDsjO
	BtuxHVqna572u/+u/ZZAQZIQjcnVuD6jOTw1wbSmqE+WJOtQPdo+4XGbJniN/7aACiVp5ive4CNgP
	jzmYj11Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpb61-003Gtp-Q8; Tue, 23 Nov 2021 19:04:49 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpb5z-003Gt7-NF
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 19:04:48 +0000
Received: by mail-pj1-x1036.google.com with SMTP id
 np6-20020a17090b4c4600b001a90b011e06so11261pjb.5
 for <linux-phy@lists.infradead.org>; Tue, 23 Nov 2021 11:04:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lAtaRpBvHvOV+Emw6bM2TA6H7E0X4AWRhmq6UZvQXyo=;
 b=KQk7RQrTWbTuyTbYfExWQSDUOnRoAXYpheIM+CAiIz8+qyvQGwCSSEzIs9me5zGERT
 hmjY1tFaMMT6k+3r4igL1s3gR1Q3N0Y9yi7OQjBvqn576FK6ZUSQ1U7BfF5CdBfG6FDS
 GxxREj+j2qQzmhj1blkDqhpzp16MtxNbBHq/nXkRzNLlQRPTMD1Yl9Kkk9QI+ZommkdQ
 Vq4DJtq4sC+Oj62YbR1MuQukkyBExwg7Sml4gWTcT9rj1bWVuNE09rEdMTUmLPdXdjYP
 l5iqIAe1cqdWej2JE3WL2VDdiUxX2T/0ECKh3F22RATX8HpRsVxehfkRW6NYr+sgBdgO
 e1jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lAtaRpBvHvOV+Emw6bM2TA6H7E0X4AWRhmq6UZvQXyo=;
 b=YAolPHxeqYzt2KuFxd+Ho77BY0NtR3chst1qAz0VaivIoHc8vhAfm7JhaCQsQgkML/
 ppc+u9lKKyJK0UW9eoOFuBTL0oL62Qqio3g4p2jaAJL7xWq5FFEvv3mvMwefRXC73dCA
 QmhpLLp4kyKmFQ3nwiBtQId/znJ1CKpIHkUXiU4iyIVgdWoaITHvJYc+DxcsDFrZMjXV
 BF4ziOMTYF/HDYIrwQlM6clBzbYK0JougpzNPI60e9sEftIJAv3tr2JttVDS3zcFdtIZ
 EZuhyecywoArKjhdBLYoFd4p+w1JSEXkgwa1EFywNk5d32m/OOIyqUQQ246fr+YUtER3
 QAhg==
X-Gm-Message-State: AOAM532Yu0FxpO5+iUoZQJMBVchNzQLY4qZmxJrgUr0hHSd8edNFxr3A
 ClpJwUwx8WC1PIshG2AhCdg=
X-Google-Smtp-Source: ABdhPJwDNPdjF9l6tbGQ5VSXBKLbS5LB0Ah+7kEBh2ktHn2E1cda+TevAgUXF/rW3/FbD3JLb5CsRg==
X-Received: by 2002:a17:902:8e85:b0:142:7621:e3b3 with SMTP id
 bg5-20020a1709028e8500b001427621e3b3mr9243413plb.84.1637694286604; 
 Tue, 23 Nov 2021 11:04:46 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id o23sm2303552pfp.209.2021.11.23.11.04.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Nov 2021 11:04:46 -0800 (PST)
Subject: Re: [PATCH] phy: bcm-ns-usb2: improve printing ref clk errors
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20211123094823.25445-1-zajec5@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <0b89b25b-31f3-e953-b937-ba461253d17f@gmail.com>
Date: Tue, 23 Nov 2021 11:04:44 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211123094823.25445-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211123_110447_790110_608FA0E7 
X-CRM114-Status: GOOD (  15.77  )
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

T24gMTEvMjMvMjEgMTo0OCBBTSwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEZyb206IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBQcmludCBhY3R1YWwgZXJyb3IgbnVt
YmVyIHRvIGhlbHAgZGVidWdnaW5nIGlzc3VlcyBidXQgYWxzbyBhdm9pZAo+IHByaW50aW5nIC1F
UFJPQkVfREVGRVIuCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBt
aWxlY2tpLnBsPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtLW5zLXVzYjIu
YyB8IDggKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbS1u
cy11c2IyLmMgYi9kcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtLW5zLXVzYjIuYwo+IGluZGV4
IDk4ZDMyNzI5YTQ1ZC4uNGNiNzA3ODVjY2I0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L2Jy
b2FkY29tL3BoeS1iY20tbnMtdXNiMi5jCj4gKysrIGIvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5
LWJjbS1ucy11c2IyLmMKPiBAQCAtMTMyLDggKzEzMiwxMiBAQCBzdGF0aWMgaW50IGJjbV9uc191
c2IyX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAo+ICAJdXNiMi0+cmVm
X2NsayA9IGRldm1fY2xrX2dldChkZXYsICJwaHktcmVmLWNsayIpOwo+ICAJaWYgKElTX0VSUih1
c2IyLT5yZWZfY2xrKSkgewo+IC0JCWRldl9lcnIoZGV2LCAiQ2xvY2sgbm90IGRlZmluZWRcbiIp
Owo+IC0JCXJldHVybiBQVFJfRVJSKHVzYjItPnJlZl9jbGspOwo+ICsJCWludCBlcnIgPSBQVFJf
RVJSKHVzYjItPnJlZl9jbGspOwoKZGV2X2Vycl9wcm9iZSgpIHNob3VsZCB0YWtlIGNhcmUgb2Yg
dGhhdCBmb3IgeW91IGFscmVhZHkuCi0tIApGbG9yaWFuCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
