Return-Path: <SRS0=2Et4=IJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AED1C433DB
	for <linux-phy@archiver.kernel.org>; Thu, 11 Mar 2021 20:33:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D19B64F8C
	for <linux-phy@archiver.kernel.org>; Thu, 11 Mar 2021 20:33:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D19B64F8C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DUXUGKwAz69ucHtuzZmVDf3Kei6+1s+D7fa++OIPbRs=; b=TRnseHdKX2sU+wMbeaL19jc5D
	WIb1es62Tx0AjNSj/Ou9ancnP57BEkebKxDkaN3bpoCh0hASWtyim6W7IZabFDJuSkNLMqExm0JyB
	sSR1wDAMtKfKrp/aXv2LgJk/723nlWsd21BqcP94foGxnxBFjvBNCO6xWVeiZM0VhprvHujWjZTwO
	m2ERyx9fLkV5pLSFRuJ9cwZZwtLgKvLG9oFdGzaK8OUV04GLLwgdXtPE5krAYe1zmJCMeG5XzLXeM
	7AVuy+G+M4lV6kO+f2IBXSB7lAX/qEgX31Q7afq6g90u2HHJqdq16KimWjEexvm48csJrV/kyI7dj
	VlwAHmbBQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKRzp-00A4Cs-Gp; Thu, 11 Mar 2021 20:33:26 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKRzk-00A4CO-8z
 for linux-phy@lists.infradead.org; Thu, 11 Mar 2021 20:33:23 +0000
Received: by mail-lf1-x12f.google.com with SMTP id v2so28922941lft.9
 for <linux-phy@lists.infradead.org>; Thu, 11 Mar 2021 12:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lDxi9l/65w1lS5MeVsfp0a2o3WqXobOac2jPACVvWIo=;
 b=gqFV3M8auXLT3svzUoytk0Umf1KAkOaqlfY5H56OjlaSjU/rs3MCe5DHuNs2D7OLl1
 dkhs9c+kSfLVsRRdcNO8Rihlpo7WJ6vkJsLOWUL1NQEN4mFx1Ne6KqzLZ8sbY1AW+dcg
 kK3Vko9qVktuM7AG0+Gjt5X384mMAEZv6vuPCmKS95aDuBMLtRCNRTetTPNK9spStG1R
 Ur6cHLNE1swoU03XUsY/IBHVvGOHNJQHbu1ftczt+HUArPHsGWlonCyVKYIKxxDHRpwr
 HgoxCqw/uQ+Vdo3Uw2dTcsYgl3wYeWCueFbsun+hObn4yj+4GVGcq03dhDxi4eF1O6DV
 YriQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lDxi9l/65w1lS5MeVsfp0a2o3WqXobOac2jPACVvWIo=;
 b=mYkwUM7cJ9MCOva4qNAxK9JaQNCJ5UAQxSfMmMla8q7RN6zMcCIGh3qkNKMlf9O/9c
 SrYO0uQS9DXAsAD6uYhJu8cPxwdHtE4zWHbmUXLpLOUKE3fKMs9T4RB++qtdir32WB2k
 RkAok9/IaXj1jtexfqqDwHs/Wc5H0MOVNI19TQX3jmZ1KN7Ok2zcCajW621Q3KHyL9WZ
 AhJnnqOpSNabPAs1UU9NVgi1flm8MnJHj12ykwRWuhRMw22Y9kNinJRmG8a+dvJ7eU6s
 MMbsc23x4+VCW2QdGylM4Bk4KVgJ0EkLLgZP+lt8vA6OMvzhzcHp+MGHDsgPLfDrlS3B
 NzKg==
X-Gm-Message-State: AOAM530BNgMF/ImQawfeGytfLbuffugRkAz3NsG371YiNo2iQ+p63Jmn
 dtWRmOtqqYIwlZcviNFzB58=
X-Google-Smtp-Source: ABdhPJw8KFY3irIf8lesknRMh5e8ws2nSFDJJQ6gOTenIvdwRyo99g33LfCaISUTRtBG972zTlzRSQ==
X-Received: by 2002:a05:6512:4c4:: with SMTP id
 w4mr3281698lfq.91.1615494799457; 
 Thu, 11 Mar 2021 12:33:19 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id u15sm1144658lff.262.2021.03.11.12.33.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Mar 2021 12:33:18 -0800 (PST)
Subject: Re: [PATCH] dt-bindings: phy: bcm-ns-usb2-phy: convert to yaml
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Hauke Mehrtens <hauke@hauke-m.de>, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 linux-phy@lists.infradead.org, Vivek Unune <npcomplete13@gmail.com>
References: <20201116074650.16070-1-zajec5@gmail.com>
 <20201116074650.16070-2-zajec5@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <411eafa9-70d6-0d46-66dd-ea03c5594e1a@gmail.com>
Date: Thu, 11 Mar 2021 21:33:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20201116074650.16070-2-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_203321_297993_88932A86 
X-CRM114-Status: GOOD (  24.36  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTYuMTEuMjAyMCAwODo0NiwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEZyb206IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiAxLiBDb252ZXJ0IGZyb20gdHh0IHRv
IHlhbWwKPiAyLiBEcm9wICJEcml2ZXIgZm9yIiBmcm9tIHRoZSB0aXRsZQo+IDMuIERvY3VtZW50
ICIjcGh5LWNlbGxzIgo+IDQuIEZpeCBleGFtcGxlIG5vZGUgbmFtZSAobm90aWNlZCBieSBkdF9i
aW5kaW5nX2NoZWNrKQo+IDUuIEFkZCAjaW5jbHVkZSB0byBleGFtcGxlIChub3RpY2VkIGJ5IGR0
X2JpbmRpbmdfY2hlY2spCj4gNi4gU3BlY2lmeSBsaWNlbnNlCj4gCj4gU2lnbmVkLW9mZi1ieTog
UmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IC0tLQo+IEkgdGhpbmsgdGhpcyBz
aG91bGQgZ28gdGhyb3VnaCBsaW51eC1waHkgdHJlZS4gS2lzaG9uLCBWaW5vZCwgY2FuIHlvdQo+
IHRha2UgdGhpcyBwYXRjaD8KPiAKPiBUaGlzIHBhdGNoIGdlbmVyYXRlcyBhIGZhbHNlIHBvc2l0
aXZlIGNoZWNrcGF0Y2gucGwgd2FybmluZyBbMF0uCj4gUGxlYXNlIGlnbm9yZToKPiBXQVJOSU5H
OiBEVCBiaW5kaW5nIGRvY3MgYW5kIGluY2x1ZGVzIHNob3VsZCBiZSBhIHNlcGFyYXRlIHBhdGNo
LiBTZWU6IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zdWJtaXR0aW5nLXBhdGNo
ZXMucnN0Cj4gCj4gWzBdIGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDIwLzIvMTgvMTA4NAoKU2Ft
ZSB0aGluZyBoZXJlLgoKS2lzaG9uLCBWaW5vZDogSSBzZW50IHRoaXMgcGF0Y2ggYmFjayBpbiBE
ZWNlbWJlciwgaXQgd2FzIFJldmlld2VkLWJ5ClJvYiwgYnV0IG5ldmVyIGFjY2VwdGVkLgoKQ291
bGQgeW91IHB1c2ggdGhpcyBwYXRjaCB0byB0aGUgbGludXgtcGh5LmdpdD8KCgo+IC0tLQo+ICAg
Li4uL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMi1waHkudHh0ICAgICAgICAgIHwgMjEgLS0tLS0t
LQo+ICAgLi4uL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMi1waHkueWFtbCAgICAgICAgIHwgNTkg
KysrKysrKysrKysrKysrKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA1OSBpbnNlcnRpb25zKCsp
LCAyMSBkZWxldGlvbnMoLSkKPiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IyLXBoeS50eHQKPiAgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2Iy
LXBoeS55YW1sCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvYmNtLW5zLXVzYjItcGh5LnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvYmNtLW5zLXVzYjItcGh5LnR4dAo+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IGE3YWVlOWVhODkyNi4uMDAwMDAwMDAwMDAwCj4gLS0tIGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMi1waHkudHh0Cj4gKysrIC9kZXYv
bnVsbAo+IEBAIC0xLDIxICswLDAgQEAKPiAtRHJpdmVyIGZvciBCcm9hZGNvbSBOb3J0aHN0YXIg
VVNCIDIuMCBQSFkKPiAtCj4gLVJlcXVpcmVkIHByb3BlcnRpZXM6Cj4gLS0gY29tcGF0aWJsZTog
YnJjbSxucy11c2IyLXBoeQo+IC0tIHJlZzogaW9tZW0gYWRkcmVzcyByYW5nZSBvZiBETVUgKERl
dmljZSBNYW5hZ2VtZW50IFVuaXQpCj4gLS0gcmVnLW5hbWVzOiAiZG11IiwgdGhlIG9ubHkgbmVl
ZGVkICYgc3VwcG9ydGVkIHJlZyByaWdodCBub3cKPiAtLSBjbG9ja3M6IFVTQiBQSFkgcmVmZXJl
bmNlIGNsb2NrCj4gLS0gY2xvY2stbmFtZXM6ICJwaHktcmVmLWNsayIsIHRoZSBvbmx5IG5lZWRl
ZCAmIHN1cHBvcnRlZCBjbG9jayByaWdodCBub3cKPiAtCj4gLVRvIGluaXRpYWxpemUgVVNCIDIu
MCBQSFkgZHJpdmVyIG5lZWRzIHRvIHNldHVwIFBMTCBjb3JyZWN0bHkuIFRvIGRvIHRoaXMgaXQK
PiAtcmVxdWlyZXMgcGFzc2luZyBwaGFuZGxlIHRvIHRoZSBVU0IgUEhZIHJlZmVyZW5jZSBjbG9j
ay4KPiAtCj4gLUV4YW1wbGU6Cj4gLQl1c2IyLXBoeSB7Cj4gLQkJY29tcGF0aWJsZSA9ICJicmNt
LG5zLXVzYjItcGh5IjsKPiAtCQlyZWcgPSA8MHgxODAwYzAwMCAweDEwMDA+Owo+IC0JCXJlZy1u
YW1lcyA9ICJkbXUiOwo+IC0JCSNwaHktY2VsbHMgPSA8MD47Cj4gLQkJY2xvY2tzID0gPCZnZW5w
bGwgQkNNX05TUF9HRU5QTExfVVNCX1BIWV9SRUZfQ0xLPjsKPiAtCQljbG9jay1uYW1lcyA9ICJw
aHktcmVmLWNsayI7Cj4gLQl9Owo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IyLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMi1waHkueWFtbAo+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi4wNWI0ZGNkODAwMTkKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNi
Mi1waHkueWFtbAo+IEBAIC0wLDAgKzEsNTkgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZQo+ICslWUFNTCAxLjIKPiArLS0tCj4gKyRp
ZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L2JjbS1ucy11c2IyLXBoeS55YW1s
Iwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFt
bCMKPiArCj4gK3RpdGxlOiBCcm9hZGNvbSBOb3J0aHN0YXIgVVNCIDIuMCBQSFkKPiArCj4gK2Rl
c2NyaXB0aW9uOiA+Cj4gKyAgVG8gaW5pdGlhbGl6ZSBVU0IgMi4wIFBIWSBkcml2ZXIgbmVlZHMg
dG8gc2V0dXAgUExMIGNvcnJlY3RseS4KPiArICBUbyBkbyB0aGlzIGl0IHJlcXVpcmVzIHBhc3Np
bmcgcGhhbmRsZSB0byB0aGUgVVNCIFBIWSByZWZlcmVuY2UgY2xvY2suCj4gKwo+ICttYWludGFp
bmVyczoKPiArICAtIFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiArCj4gK3By
b3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIGNvbnN0OiBicmNtLG5zLXVzYjItcGh5
Cj4gKwo+ICsgIHJlZzoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBpb21l
bSBhZGRyZXNzIHJhbmdlIG9mIERNVSAoRGV2aWNlIE1hbmFnZW1lbnQgVW5pdCkKPiArCj4gKyAg
cmVnLW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IGRtdQo+ICsKPiArICBj
bG9ja3M6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBkZXNjcmlwdGlvbjogVVNCIFBIWSByZWZl
cmVuY2UgY2xvY2sKPiArCj4gKyAgY2xvY2stbmFtZXM6Cj4gKyAgICBpdGVtczoKPiArICAgICAg
LSBjb25zdDogcGh5LXJlZi1jbGsKPiArCj4gKyAgIiNwaHktY2VsbHMiOgo+ICsgICAgY29uc3Q6
IDAKPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+ICsgIC0gcmVnCj4gKyAgLSBy
ZWctbmFtZXMKPiArICAtIGNsb2Nrcwo+ICsgIC0gY2xvY2stbmFtZXMKPiArICAtICIjcGh5LWNl
bGxzIgo+ICsKPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4gKwo+ICtleGFtcGxlczoK
PiArICAtIHwKPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9iY20tbnNwLmg+Cj4g
KyAgICBwaHlAMTgwMGMwMDAgewo+ICsgICAgICAgIGNvbXBhdGlibGUgPSAiYnJjbSxucy11c2Iy
LXBoeSI7Cj4gKyAgICAgICAgcmVnID0gPDB4MTgwMGMwMDAgMHgxMDAwPjsKPiArICAgICAgICBy
ZWctbmFtZXMgPSAiZG11IjsKPiArICAgICAgICBjbG9ja3MgPSA8JmdlbnBsbCBCQ01fTlNQX0dF
TlBMTF9VU0JfUEhZX1JFRl9DTEs+Owo+ICsgICAgICAgIGNsb2NrLW5hbWVzID0gInBoeS1yZWYt
Y2xrIjsKPiArICAgICAgICAjcGh5LWNlbGxzID0gPDA+Owo+ICsgICAgfTsKPiAKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
