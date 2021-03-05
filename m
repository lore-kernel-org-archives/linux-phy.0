Return-Path: <SRS0=UbcY=ID=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8956C433E0
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 21:48:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 50335650A9
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 21:48:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 50335650A9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=adGTSPgcXVgMKBzsCHgF4wejHtoBZLwbwgN2+JpRXLw=; b=aayKEE1omuXG8E3/yY3V10Eat
	dhPoNIvS31gINpJAl3QyxmoC6F2YHzV+zvl8jPuhMiJ3MdkPZWGYFvsLOImNKOfMRbn1673uFywgN
	cxMajKLgE16NKmTdXrkx9e5M4bOm0qW3/NMtDP/HpmSo1v6CYzbeOoCIn76/q7Yjmp9/PBnUBwwXD
	pxI2jqdOA99DTm6soLOuo+CUwTeoaX3G28DHncPCB0nAOR+u4uvY1mDkxSy7ZPzc7+24cAt8RsOs1
	SmjL3NDNVnRZwBg1KriKpngYorFgoXRLo3MFNz052iMrJq7IpZq1l2EhzTJnPuiAm191So7v2NP2B
	eWAtM27vg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIIIv-00GgEG-Eq; Fri, 05 Mar 2021 21:48:13 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIIIn-00GgBk-FR
 for linux-phy@lists.infradead.org; Fri, 05 Mar 2021 21:48:10 +0000
Received: by mail-lj1-x233.google.com with SMTP id e2so4638333ljo.7
 for <linux-phy@lists.infradead.org>; Fri, 05 Mar 2021 13:48:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AxfzahttmJmyaaNO341zI4FxIQ9ySpNB5/9C/f+vk4U=;
 b=LDt6DG5EYiFvYSPj+yxTP/l91WhtxnepHQU/EPtg63Ny/bJjTaZN/A5kcC0RasBtzp
 LCbFvZJdFSqOV7fRxzrZg53K/H5JCOtEUnWzHeHWoZx1yqc7swTkKgBVaCEtVxIZ3YVn
 ErsM0vcPw/lIDi1GVjh50aSdo0vZSFrd2ZjX3JlG2phwKfDML/JwdDS/B95AYwSys8s8
 IhznNc5DIneJByLjGUxqDqyJN9qiK53nJXzEy2nvZNJGucNrOVgKdPysHIYWR5hl4sGP
 IWBseD+RKmI8FACLJUqaAbYQgAVTDpoJCd4N2u6LhuLmVAKYs3nJdjZ05oDrvRo3IWZ1
 BqNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AxfzahttmJmyaaNO341zI4FxIQ9ySpNB5/9C/f+vk4U=;
 b=PJiFDL/nMt75BHeEnlWEM8m9fxa3pN6jvdrIr5AX6xFsM2m5j4yS+ACPpmilJNEQEE
 PFvVjWrn2NyFP21+xo8r2v4W3pz3L8sN9E4T8sgAVYsIUV6IDsk/Hpm9OqE7yKX9w/QJ
 F+6l8zMh0fu+gkZiXMtXizqkqaJpscVXPP61KX5ZugdN0MH28DkjPQgOO1EvD5BpydNs
 +yLps2CqbZcSG1SHrZtRMAvqm04OcoT0aIkV6jFiQqkeaW6yCX1M3/6wtaHfuqVMmvKx
 zXinVhE+dGOOomDX0edPJXI6GoaA4sDzW18dhAnXROFo11YyxGpy5eEqvW/7Nzx8mg4k
 QkAQ==
X-Gm-Message-State: AOAM5301kFQRG2HklNezG4XQ8O8Ruv0qVHS5YncQTjc2uMGCjdY7NB/1
 2kqrvUH7ISDslJQTCski5WmUtYlyrSs=
X-Google-Smtp-Source: ABdhPJybuT/DSeY60eU+wfU6jbpY0AEscf1GLffztX4byv6PHBvlctCDKMBpcc8rz19jofO7TpP5OA==
X-Received: by 2002:a2e:86d0:: with SMTP id n16mr6599564ljj.288.1614980884339; 
 Fri, 05 Mar 2021 13:48:04 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id k1sm448346lfe.208.2021.03.05.13.48.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Mar 2021 13:48:03 -0800 (PST)
Subject: Re: [PATCH 1/3] dt-bindings: phy: convert Broadcom NS USB 2.0 to the
 json-schema
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Vivek Unune
 <npcomplete13@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 linux-phy@lists.infradead.org
References: <20210226114501.31086-1-zajec5@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <b17965ce-20c4-b697-b21e-09e76e113ef1@gmail.com>
Date: Fri, 5 Mar 2021 22:48:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210226114501.31086-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_214808_996933_1D4DF8FF 
X-CRM114-Status: GOOD (  21.35  )
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

Q2MgbGludXgtcGh5QCBhZ2FpbiAoYWZ0ZXIgZml4aW5nIHJlY2lwaWVudHMgbGltaXQpCgpPbiAy
Ni4wMi4yMDIxIDEyOjQ0LCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gRnJvbTogUmFmYcWCIE1p
xYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IE1pbm9yIGV4YW1wbGUgZml4ZXM6Cj4gMS4g
SW5jbHVkZSBiY20tbnNwLmgKPiAyLiBBZGQgYWRkcmVzcyB0byB0aGUgbm9kZSBuYW1lCj4gCj4g
U2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IC0tLQo+
IFRoaXMgaGFzIGJlZW4gdmVyaWZpZWQgdXNpbmcgZHRfYmluZGluZ19jaGVjawo+IC0tLQo+ICAg
Li4uL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMi1waHkudHh0ICAgICAgICAgIHwgMjEgLS0tLS0t
LQo+ICAgLi4uL2JpbmRpbmdzL3BoeS9icmNtLG5zLXVzYjItcGh5LnlhbWwgICAgICAgIHwgNTUg
KysrKysrKysrKysrKysrKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCsp
LCAyMSBkZWxldGlvbnMoLSkKPiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IyLXBoeS50eHQKPiAgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sbnMtdXNi
Mi1waHkueWFtbAo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L2JjbS1ucy11c2IyLXBoeS50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L2JjbS1ucy11c2IyLXBoeS50eHQKPiBkZWxldGVkIGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCBhN2FlZTllYTg5MjYuLjAwMDAwMDAwMDAwMAo+IC0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYmNtLW5zLXVzYjItcGh5LnR4dAo+ICsrKyAvZGV2
L251bGwKPiBAQCAtMSwyMSArMCwwIEBACj4gLURyaXZlciBmb3IgQnJvYWRjb20gTm9ydGhzdGFy
IFVTQiAyLjAgUEhZCj4gLQo+IC1SZXF1aXJlZCBwcm9wZXJ0aWVzOgo+IC0tIGNvbXBhdGlibGU6
IGJyY20sbnMtdXNiMi1waHkKPiAtLSByZWc6IGlvbWVtIGFkZHJlc3MgcmFuZ2Ugb2YgRE1VIChE
ZXZpY2UgTWFuYWdlbWVudCBVbml0KQo+IC0tIHJlZy1uYW1lczogImRtdSIsIHRoZSBvbmx5IG5l
ZWRlZCAmIHN1cHBvcnRlZCByZWcgcmlnaHQgbm93Cj4gLS0gY2xvY2tzOiBVU0IgUEhZIHJlZmVy
ZW5jZSBjbG9jawo+IC0tIGNsb2NrLW5hbWVzOiAicGh5LXJlZi1jbGsiLCB0aGUgb25seSBuZWVk
ZWQgJiBzdXBwb3J0ZWQgY2xvY2sgcmlnaHQgbm93Cj4gLQo+IC1UbyBpbml0aWFsaXplIFVTQiAy
LjAgUEhZIGRyaXZlciBuZWVkcyB0byBzZXR1cCBQTEwgY29ycmVjdGx5LiBUbyBkbyB0aGlzIGl0
Cj4gLXJlcXVpcmVzIHBhc3NpbmcgcGhhbmRsZSB0byB0aGUgVVNCIFBIWSByZWZlcmVuY2UgY2xv
Y2suCj4gLQo+IC1FeGFtcGxlOgo+IC0JdXNiMi1waHkgewo+IC0JCWNvbXBhdGlibGUgPSAiYnJj
bSxucy11c2IyLXBoeSI7Cj4gLQkJcmVnID0gPDB4MTgwMGMwMDAgMHgxMDAwPjsKPiAtCQlyZWct
bmFtZXMgPSAiZG11IjsKPiAtCQkjcGh5LWNlbGxzID0gPDA+Owo+IC0JCWNsb2NrcyA9IDwmZ2Vu
cGxsIEJDTV9OU1BfR0VOUExMX1VTQl9QSFlfUkVGX0NMSz47Cj4gLQkJY2xvY2stbmFtZXMgPSAi
cGh5LXJlZi1jbGsiOwo+IC0JfTsKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9icmNtLG5zLXVzYjItcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sbnMtdXNiMi1waHkueWFtbAo+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5iOGI2ODNjZThmYTkKPiAtLS0gL2Rldi9u
dWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9icmNtLG5z
LXVzYjItcGh5LnlhbWwKPiBAQCAtMCwwICsxLDU1IEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UKPiArJVlBTUwgMS4yCj4gKy0tLQo+
ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9icmNtLG5zLXVzYjItcGh5
LnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29y
ZS55YW1sIwo+ICsKPiArdGl0bGU6IEJyb2FkY29tIE5vcnRoc3RhciBVU0IgMi4wIFBIWQo+ICsK
PiArZGVzY3JpcHRpb246IEJyb2FkY29tJ3MgVVNCIDIuMCBQSFkgaW50ZWdyYXRlZCBpbnRvIE5v
cnRoc3RhciBmYW1pbHkgU29Dcwo+ICsKPiArbWFpbnRhaW5lcnM6Cj4gKyAgLSBSYWZhxYIgTWnF
gmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4gKwo+ICtwcm9wZXJ0aWVzOgo+ICsgIGNvbXBhdGli
bGU6Cj4gKyAgICBjb25zdDogYnJjbSxucy11c2IyLXBoeQo+ICsKPiArICByZWc6Cj4gKyAgICBt
YXhJdGVtczogMQo+ICsgICAgZGVzY3JpcHRpb246IERNVSAoRGV2aWNlIE1hbmFnZW1lbnQgVW5p
dCkgYWRkcmVzcyByYW5nZQo+ICsKPiArICByZWctbmFtZXM6Cj4gKyAgICBjb25zdDogZG11Cj4g
Kwo+ICsgIGNsb2NrczoKPiArICAgIG1heEl0ZW1zOiAxCj4gKyAgICBkZXNjcmlwdGlvbjogVVNC
IFBIWSByZWZlcmVuY2UgY2xvY2sKPiArCj4gKyAgY2xvY2stbmFtZXM6Cj4gKyAgICBjb25zdDog
cGh5LXJlZi1jbGsKPiArCj4gKyAgIiNwaHktY2VsbHMiOgo+ICsgICAgY29uc3Q6IDAKPiArCj4g
K3JlcXVpcmVkOgo+ICsgIC0gcmVnCj4gKyAgLSByZWctbmFtZXMKPiArICAtIGNsb2Nrcwo+ICsg
IC0gY2xvY2stbmFtZXMKPiArICAtICIjcGh5LWNlbGxzIgo+ICsKPiArYWRkaXRpb25hbFByb3Bl
cnRpZXM6IGZhbHNlCj4gKwo+ICtleGFtcGxlczoKPiArICAtIHwKPiArICAgICNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9jbG9jay9iY20tbnNwLmg+Cj4gKwo+ICsgICAgdXNiMi1waHlAMTgwMGMwMDAg
ewo+ICsgICAgICAgIGNvbXBhdGlibGUgPSAiYnJjbSxucy11c2IyLXBoeSI7Cj4gKyAgICAgICAg
cmVnID0gPDB4MTgwMGMwMDAgMHgxMDAwPjsKPiArICAgICAgICByZWctbmFtZXMgPSAiZG11IjsK
PiArICAgICAgICBjbG9ja3MgPSA8JmdlbnBsbCBCQ01fTlNQX0dFTlBMTF9VU0JfUEhZX1JFRl9D
TEs+Owo+ICsgICAgICAgIGNsb2NrLW5hbWVzID0gInBoeS1yZWYtY2xrIjsKPiArICAgICAgICAj
cGh5LWNlbGxzID0gPDA+Owo+ICsgICAgfTsKPiAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
