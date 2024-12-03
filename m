Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F3A1E64AAD
	for <linux-phy@archiver.kernel.org>; Tue,  3 Dec 2024 13:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/VoiYSRHP7M750bBM0pKVerN7DuoCwnVMrqQvyyX/KY=; b=Y4jnhjDlWi8GTy
	ljFu0JdMfI3FrGpufWmUFO9RPuAs6EHD8tJW0Mh0w2eenQZijQh/ISNcC/k8BGxp4Qw9lFaZXEZPF
	Hw/YoNie9uAzGhay0F2vgzk6O6KizBkVsPksXtZ9ui0dvdSvpEHIE/F/RwLeaIzAEDelnYuvJJ41e
	9UnlxSahrKocAxs7+wrp5zEe/OZ8eQpNFC0iPb7vFfnHaapegK3XGXdhGY766HjdydGmll7Qct/Mw
	EfGYxNKvKklvrpDx9l7SzMY4FasEK9QZEX6I2QMKxuxFaYFPZWuU+xd1C9UFK9ZnzbUsHcX0aIcWw
	dZSx5+aIDiFkBQapnF7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tITQr-00000009hzZ-1y74;
	Tue, 03 Dec 2024 13:59:17 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tITQa-00000009hvE-0Dkx
	for linux-phy@lists.infradead.org;
	Tue, 03 Dec 2024 13:59:01 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-53df6322ea7so9601698e87.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Dec 2024 05:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733234338; x=1733839138; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ratoXWp/EmolcxNUAUNGQ1kmRPcGIDYTBbsytoKVT70=;
        b=Rx+nzpc3YZiCfZG/x+kCNObYg00XOM+4A1NZSvrGtYGUTtDk5TdxNYyJ82PBvKDfad
         LnK9bOAPZdzO9vStEKyMIRMgMWbTenpeUahNgkcJxOZ7jwhwDl6qcIuDd/3WJUZbOJlu
         DN8n+Oflu3eEhCpNom8J+sf+6qw3Dt9jNXygLmgaHZDZPxdW87NeR6ot0T2gbje5F1Lc
         qFKv3fn512ENZGUP7iTKajxgq+FJ4a+tTL/OwX/7EjrckiZyd436KvLb09v7RU9/Gnt/
         PoQhjdyC43TH0rzk3u/AokLlGmM1SbN7ZXTKdBPAqNHQv0fTqs87mPz1/IFcxsAlVnaB
         OU5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733234338; x=1733839138;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ratoXWp/EmolcxNUAUNGQ1kmRPcGIDYTBbsytoKVT70=;
        b=sy8LB5fF1p8+uikqbEx7bNgOCkVYXHMA83OCysLQZfyJZBgN012d+M/VyzAUdFqfvd
         9JU9b2etlSFJj8MHYIPlrguOK0WLM02bdczBeZUtsvLfO/eLVylgreHLE38nBWyrpvSX
         5sgzxOdTh2bLHkYL8oD31fU94mXaZ5JL4ic0RnNVVJkShwhkAEkrHlMGXGyM7f9zUBYK
         YAQrGvKtRWXPwBpQb7Vv/fZ1JVI+jlXGrvbd+IsQL9j39agppRVIeiYN5hS62MqKmUds
         edo1RoPGzVJBbzlM3r1WH1FNd9/+LcWqBKCVFZ3Z8ZJCJCzfenbNE0HGTHTWSB7rH57W
         ztFA==
X-Forwarded-Encrypted: i=1; AJvYcCXrQm03+U8SOI0Wt9sGRR2lmYY8wz5DHvR4UFLqBNK2gcW6Bz9TyRKBOGU8xYDe06SBhY1fwa3R+Co=@lists.infradead.org
X-Gm-Message-State: AOJu0YwXbccezK4ii3aZzD0pg6M/Fva3YYg8UEtw5DqF8RK9Uo2EPTXc
	+OTQily4Ldu4wPZXl/s1x1v1DCKi7XTz0rbSKNOMpK2U7Xs5qb1K1Xlpz31RRfs=
X-Gm-Gg: ASbGnct8LWVYd4Q9BzyAqyR2JP427KRjfBwRVFuvBB+EsfZpdIpMWD+2Dg9PMg9ZeZ8
	hnhkGAPTruRWWzKLrX1ZwGxZomdMRM5HZJDPKhqZf/G1Ze+rXZqrz4ot1C9kH6Cp8S9PNPsKpUw
	0xmbbydJhR5ls5O0IrC7NeJ6HUtL01s4yzBPTxIdIrjMrinyegS4giMqwoKC2EGaaifAKLQBaPD
	mGtyutXlvYlPdg+JG9o8FkdreYIsWGmBt9fndtUsKyiF10UmfSwOs1JFV/bVt5McYMo81zA6M52
	j9tHt69pdReaLDwk8z5Mky1AkxtbQQ==
X-Google-Smtp-Source: AGHT+IGXwu7iAMc0T7nz4ZWr7DVCTldVmrbcWesEg5VeYru0HhyDfTDMH7KA7Bk8Gf9p7i1oKm3lyg==
X-Received: by 2002:a05:6512:3182:b0:53d:a025:1142 with SMTP id 2adb3069b0e04-53e12a39336mr2285402e87.54.1733234338202;
        Tue, 03 Dec 2024 05:58:58 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a06fesm1843812e87.258.2024.12.03.05.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 05:58:56 -0800 (PST)
Date: Tue, 3 Dec 2024 15:58:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com, quic_fangez@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH 6/8] drm/msm/dp: Add maximum width limitation for modes
Message-ID: <fb6enh3wzusadc6r7clg7n7ik2jsucimoi7dnecnsstcz4r6e6@dtahvlm522jj>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-6-09a4338d93ef@quicinc.com>
 <CAA8EJpprTGRTxO+9BC6GRwxE4A3CuvmySsxS2Nh4Tqj0nDRT_Q@mail.gmail.com>
 <95a78722-8266-4d5d-8d2f-e8efa1aa2e87@quicinc.com>
 <CAA8EJpo-1o9i4JhZgdbvRxvoYQE2v18Lz_8dVg=Za7a_pk5EDA@mail.gmail.com>
 <86b9a8be-8972-4c19-af0c-da6b3667cbf4@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86b9a8be-8972-4c19-af0c-da6b3667cbf4@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_055900_091474_66738E21 
X-CRM114-Status: GOOD (  19.01  )
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

T24gVHVlLCBEZWMgMDMsIDIwMjQgYXQgMDM6NDE6NTNQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gCj4gCj4gT24gMTIvMi8yMDI0IDU6MzIgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6
Cj4gPiBPbiBNb24sIDIgRGVjIDIwMjQgYXQgMTE6MDUsIFhpYW5neHUgWWluIDxxdWljX3hpYW5n
eHV5QHF1aWNpbmMuY29tPiB3cm90ZToKPiA+Pgo+ID4+Cj4gPj4KPiA+PiBPbiAxMS8yOS8yMDI0
IDk6NTIgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPj4+IE9uIEZyaSwgMjkgTm92IDIw
MjQgYXQgMDk6NTksIFhpYW5neHUgWWluIDxxdWljX3hpYW5neHV5QHF1aWNpbmMuY29tPiB3cm90
ZToKPiA+Pj4+Cj4gPj4+PiBJbnRyb2R1Y2UgYSBtYXhpbXVtIHdpZHRoIGNvbnN0cmFpbnQgZm9y
IG1vZGVzIGR1cmluZyB2YWxpZGF0aW9uLiBUaGlzCj4gPj4+PiBlbnN1cmVzIHRoYXQgdGhlIG1v
ZGVzIGFyZSBmaWx0ZXJlZCBiYXNlZCBvbiBoYXJkd2FyZSBjYXBhYmlsaXRpZXMsCj4gPj4+PiBz
cGVjaWZpY2FsbHkgYWRkcmVzc2luZyB0aGUgbGluZSBidWZmZXIgbGltaXRhdGlvbnMgb2YgaW5k
aXZpZHVhbCBwaXBlcy4KPiA+Pj4KPiA+Pj4gVGhpcyBkb2Vzbid0IGRlc2NyaWJlLCB3aHkgdGhp
cyBpcyBuZWNlc3NhcnkuIFdoYXQgZG9lcyAiYnVmZmVyCj4gPj4+IGxpbWl0YXRpb25zIG9mIGlu
ZGl2aWR1YWwgcGlwZXMiIG1lYW4/Cj4gPj4+IElmIHRoZSBwbGF0Zm9ybXMgaGF2ZSBodyBjYXBh
YmlsaXRpZXMgbGlrZSBiZWluZyB1bmFibGUgdG8gc3VwcG9ydCA4awo+ID4+PiBvciAxMGssIGl0
IHNob3VsZCBnbyB0byBwbGF0Zm9ybSBkYXRhCj4gPj4+Cj4gPj4gSXQncyBTU1BQIGxpbmUgYnVm
ZmVyIGxpbWl0YXRpb24gZm9yIHRoaXMgcGxhdGZvcm0gYW5kIG9ubHkgc3VwcG9ydCB0byAyMTYw
IG1vZGUgd2lkdGguCj4gPj4gVGhlbiwgc2hhbGwgSSBhZGQgbWF4X3dpZHRoIGNvbmZpZyB0byBz
dHJ1Y3QgbXNtX2RwX2Rlc2MgaW4gbmV4dCBwYXRjaD8gZm9yIG90aGVyIHBsYXRmb3JtIHdpbGwg
c2V0IGRlZnVhbHQgdmFsdWUgdG8g4oCYRFBfTUFYX1dJRFRIIDc2ODAnCj4gPiAKPiA+IFNTUFAg
bGluZSBidWZmZXIgbGltaXRhdGlvbnMgYXJlIHRvIGJlIGhhbmRsZWQgaW4gdGhlIERQVSBkcml2
ZXIuIFRoZQo+ID4gRFAgZHJpdmVyIHNob3VsZG4ndCBjYXJlIGFib3V0IHRob3NlLgo+ID4gCj4g
T2ssIFdpbGwgZHJvcCB0aGlzIHBhcnQgaW4gbmV4dCBwYXRjaC4KCklmIHlvdSBkcm9wIGl0LCB3
aGF0IHdpbGwgYmUgbGVmdCBmcm9tIHRoZSBwYXRjaCBpdHNlbGY/Cgo+ID4+Pj4KPiA+Pj4+IFNp
Z25lZC1vZmYtYnk6IFhpYW5neHUgWWluIDxxdWljX3hpYW5neHV5QHF1aWNpbmMuY29tPgo+ID4+
Pj4gLS0tCj4gPj4+PiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5LmMgfCAgMyAr
KysKPiA+Pj4+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2Rpc3BsYXkuaCB8ICAxICsKPiA+
Pj4+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmMgICB8IDEzICsrKysrKysrKysr
KysKPiA+Pj4+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmggICB8ICAxICsKPiA+
Pj4+ICA0IGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykKPiA+IAo+ID4gCj4gCgotLSAK
V2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
