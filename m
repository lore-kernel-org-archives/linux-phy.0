Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8581AC07E97
	for <linux-phy@archiver.kernel.org>; Fri,  1 Dec 2023 06:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NuOSMjxOFMPV4KFjpZ55iR637Uk0S4sAC72JxCjS4Wg=; b=ricQ8EOoewS8Vp
	MxJBVaJoyREOLoaW/c0t42LdACWSDUHuYp7uJ154V3poioV6AWNTdrG2WyM3QjXU/Pq4RdAgVa04p
	AZom7ppaWWKDjhHA1KRCWtsgcI16fpTkDU2k3vG1qxv8TNpJMaco6dLBOBrEqXOyUyKC0BKEi8Cji
	8bvWOYwhf+UyQ7kZYhOb5Mxj0DM/DU1tiag/fMTXF5z63L3Kbj204Ho2YAgMIx0BSlJsFWMvKDq23
	CCQd82agSAr2Yvvma9sakPZFoMalHzYwfTJyiIPlQoXU2itw649v4onYjHSq+NdDD7doSqxMQOw6S
	AICpzEEgHCwMqcKjYY0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8wih-00CkR8-0p;
	Fri, 01 Dec 2023 06:09:47 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8wif-00CkQp-0e
	for linux-phy@lists.infradead.org;
	Fri, 01 Dec 2023 06:09:46 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-423c28db22eso23828541cf.1
        for <linux-phy@lists.infradead.org>; Thu, 30 Nov 2023 22:09:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701410983; x=1702015783; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HTBGY1oy5xfgo0+VO2qMvDpiGe30dNnP8Di6PCzHzfE=;
        b=ESDNSglAVGqiu06x0Knf6119TU4qG3ZawV0F1VZAHNmIFm8RAIrwIQMYoAiDrR/XMa
         7+nv/VINsqeHS/3c6eY8pW78S0353X9EWrSISWNd3B0S/Y8gPNcCydKOgOfJoEJwd5mr
         s0xrgG9XjbIpwyjaRfC00TpQ6Ys31DgGjNbLgVqGr1NeN4fSFDYIrwRZQy3fkzDs1kw3
         CQi/v6ODcHTChazvpVB5iu5Lr1KaOVQsHUZIxdLLuyzEnQ9JCsmIdIZdfRgm1oIVspuV
         H5lyzC0rhU6VSqz6dcQe5IyGIcqVqHs0X0rEnE4FgsYt7KV00oHVXsJ1wsMteX1AkEsZ
         5tJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701410983; x=1702015783;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HTBGY1oy5xfgo0+VO2qMvDpiGe30dNnP8Di6PCzHzfE=;
        b=ekIAfOZ2NxGJl/pIgzs6P/O2AMaztQW+SK1bihsFBJXJVQ32eqwifTNP3tbUE7+XXc
         Z0KR22GkmgdNixKxeLoj1bQwUKORaa7QO3IqdLXK1aR8PS9MvIhiv6kZ/yvNCsA+tj4h
         DbdpSrCxBRjGrKxxsIXvjQ2la1poWA0okMkXB5i8i3l3TcSUc42kce68QT3Uidv5VSGE
         oTt7RRyk4qoP+Tk9tZZ93kbURkzna+U3treu0b+Zdh6daF1flnfdt1n84wC3Mcirx6wn
         8wtvLvVcenjHUjoF78ZeVqv+Ygf/7HXnuIBDttBog2SFvC10BhbU2pC/ORKCMWHd3zEB
         c4tQ==
X-Gm-Message-State: AOJu0YyziLpIbUWkxABqFd0+dEM51us3xdby+2MS7fAM0r1+GJDAw1dC
	z3BabPBM52BjEwP/ncomtYc4
X-Google-Smtp-Source: AGHT+IGAABQDU3axNxWPqU2DPDM9Qs/mgiEnVBVMMHF0/BtCPRJ3xlxbSW8ZA0IFsoPre5Xm6XtW/g==
X-Received: by 2002:a05:622a:1b02:b0:423:a6c5:1924 with SMTP id bb2-20020a05622a1b0200b00423a6c51924mr34045005qtb.23.1701410981424;
        Thu, 30 Nov 2023 22:09:41 -0800 (PST)
Received: from thinkpad ([117.213.102.92])
        by smtp.gmail.com with ESMTPSA id h14-20020ac8568e000000b00423e6885152sm1200897qta.75.2023.11.30.22.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 22:09:40 -0800 (PST)
Date: Fri, 1 Dec 2023 11:39:28 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_parass@quicinc.com,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v3 3/3] phy: qcom-qmp-pcie: Add support for keeping
 refclk always on
Message-ID: <20231201060928.GK4009@thinkpad>
References: <20231127-refclk_always_on-v3-0-26d969fa8f1d@quicinc.com>
 <20231127-refclk_always_on-v3-3-26d969fa8f1d@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231127-refclk_always_on-v3-3-26d969fa8f1d@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_220945_268125_D2B51360 
X-CRM114-Status: GOOD (  20.56  )
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

T24gTW9uLCBOb3YgMjcsIDIwMjMgYXQgMDU6NDM6NTFQTSArMDUzMCwgS3Jpc2huYSBjaGFpdGFu
eWEgY2h1bmRydSB3cm90ZToKPiBJbiBQQ0llIGxvdyBwb3dlciBzdGF0ZXMgbGlrZSBMMS4xIG9y
IEwxLjIgdGhlIHBoeSB3aWxsIHN0b3AKPiBzdXBwbHlpbmcgcmVmY2xrIHRvIGVuZHBvaW50LiBJ
ZiBlbmRwb2ludCBhc3NlcnRzIGNsa3JlcSB0byBicmluZwo+IGJhY2sgbGluayBMMCwgdGhlbiBS
QyBuZWVkcyB0byBwcm92aWRlIHJlZmNsayB0byBlbmRwb2ludC4KPiAKPiBTb21lIHBsYXRmb3Jt
cyB3aXRoIHBjaWUgc3dpdGNoIGZhaWwgdG8gZHJpdmUgdGhlIGNsa3JlcSBzaWduYWwgdG8KPiB0
aGUgaG9zdCBmcm9tIHRoZSBlbmRwb2ludHMgYmVjYXVzZSBvZiB0aGUgc3dpdGNoIGJvYXJkIGRl
c2lnbi4KPiBEdWUgdG8gdGhhdCByZWZjbGsgbmVlZHMgdG8gc3VwcGxpZWQgdG8gdGhlIGVuZHBv
aW50IGFsd2F5cy4KPiAKPiBBZGQgYSBmbGFnIHRvIGtlZXAgcmVmY2xrIGFsd2F5cyBzdXBwbGll
ZCB0byBlbmRwb2ludC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBLcmlzaG5hIGNoYWl0YW55YSBjaHVu
ZHJ1IDxxdWljX2tyaWNoYWlAcXVpY2luYy5jb20+Cj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5
c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYyB8IDE0ICsrKysrKysrKysrKysrCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1xbXAtcGNpZS5jCj4gaW5kZXggN2ZkZjliMjU5NmI2Li5lOTVmNjc3ODE3ZjcgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYwo+ICsrKyBi
L2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMKPiBAQCAtNDMsNiArNDMs
OCBAQAo+ICAvKiBRUEhZX1BDU19TVEFUVVMgYml0ICovCj4gICNkZWZpbmUgUEhZU1RBVFVTCQkJ
CUJJVCg2KQo+ICAjZGVmaW5lIFBIWVNUQVRVU180XzIwCQkJCUJJVCg3KQo+ICsvKiBQQ1NfUENJ
RV9FTkRQT0lOVF9SRUZDTEtfQ05UUkwgKi8KPiArI2RlZmluZSBFUENMS19BTFdBWVNfT05fRU4J
CQlCSVQoNikKPiAgCj4gICNkZWZpbmUgUEhZX0lOSVRfQ09NUExFVEVfVElNRU9VVAkJMTAwMDAK
PiAgCj4gQEAgLTIyNjQsNiArMjI2Niw4IEBAIHN0cnVjdCBxbXBfcGNpZSB7Cj4gIAlzdHJ1Y3Qg
cGh5ICpwaHk7Cj4gIAlpbnQgbW9kZTsKPiAgCj4gKwlib29sIHJlZmNsa19hbHdheXNfb247Cj4g
Kwo+ICAJc3RydWN0IGNsa19maXhlZF9yYXRlIHBpcGVfY2xrX2ZpeGVkOwo+ICB9Owo+ICAKPiBA
QCAtMzE3OSw2ICszMTgzLDEwIEBAIHN0YXRpYyB2b2lkIHFtcF9wY2llX2luaXRfcmVnaXN0ZXJz
KHN0cnVjdCBxbXBfcGNpZSAqcW1wLCBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jCj4gIAlxbXBfcGNp
ZV9jb25maWd1cmUocGNzLCB0YmxzLT5wY3MsIHRibHMtPnBjc19udW0pOwo+ICAJcW1wX3BjaWVf
Y29uZmlndXJlKHBjc19taXNjLCB0YmxzLT5wY3NfbWlzYywgdGJscy0+cGNzX21pc2NfbnVtKTsK
PiAgCj4gKwlpZiAocW1wLT5yZWZjbGtfYWx3YXlzX29uICYmIGNmZy0+cmVnc1tRUEhZX1BDU19F
TkRQT0lOVF9SRUZDTEtfQ05UUkxdKQo+ICsJCXFwaHlfc2V0Yml0cyhwY3NfbWlzYywgY2ZnLT5y
ZWdzW1FQSFlfUENTX0VORFBPSU5UX1JFRkNMS19DTlRSTF0sCj4gKwkJCSAgICAgRVBDTEtfQUxX
QVlTX09OX0VOKTsKPiArCj4gIAlpZiAoY2ZnLT5sYW5lcyA+PSA0ICYmIHFtcC0+dGNzcl80bG5f
Y29uZmlnKSB7Cj4gIAkJcW1wX3BjaWVfY29uZmlndXJlKHNlcmRlcywgY2ZnLT5zZXJkZXNfNGxu
X3RibCwgY2ZnLT5zZXJkZXNfNGxuX251bSk7Cj4gIAkJcW1wX3BjaWVfaW5pdF9wb3J0X2IocW1w
LCB0YmxzKTsKPiBAQCAtMzcwMSw2ICszNzA5LDEyIEBAIHN0YXRpYyBpbnQgcW1wX3BjaWVfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCWlmIChyZXQpCj4gIAkJZ290byBl
cnJfbm9kZV9wdXQ7Cj4gIAo+ICsJcW1wLT5yZWZjbGtfYWx3YXlzX29uID0gb2ZfcHJvcGVydHlf
cmVhZF9ib29sKGRldi0+b2Zfbm9kZSwgInFjb20scmVmY2xrLWFsd2F5cy1vbiIpOwo+ICsJaWYg
KHFtcC0+cmVmY2xrX2Fsd2F5c19vbiAmJiAhcW1wLT5jZmctPnJlZ3NbUVBIWV9QQ1NfRU5EUE9J
TlRfUkVGQ0xLX0NOVFJMXSkgewo+ICsJCWRldl9lcnIoZGV2LCAicmVmY2xrIGlzIGFsd2F5cyBv
biBpcyBwcmVzZW50IGJ1dCByZWZjbGsgY250cmwgb2Zmc2V0IGlzIG5vdCBwcmVzZW50XG4iKTsK
CiJGaXJtd2FyZSByZXF1ZXN0ZWQgdG8ga2VlcCBSRUZDTEsgYWx3YXlzIE9OLCBidXQgZHJpdmVy
IG1pc3Npbmcgb2Zmc2V0XG4iCgotIE1hbmkKCj4gKwkJZ290byBlcnJfbm9kZV9wdXQ7Cj4gKwl9
Cj4gKwo+ICAJcmV0ID0gcGh5X3BpcGVfY2xrX3JlZ2lzdGVyKHFtcCwgbnApOwo+ICAJaWYgKHJl
dCkKPiAgCQlnb3RvIGVycl9ub2RlX3B1dDsKPiAKPiAtLSAKPiAyLjQyLjAKPiAKPiAKCi0tIArg
rq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
