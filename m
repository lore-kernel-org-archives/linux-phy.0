Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87ADDC369DC
	for <linux-phy@archiver.kernel.org>; Tue, 29 Apr 2025 10:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5F6BRBW3Dk6l0DMrdhhE+QP7QIniE5cMlPpV0wfY0A=; b=tofaqB/hO2D14N
	GOi8Fdk6eJIsWeoeF1oPMKrZmH0GsbMLmP4R5+WZohNmR5DfiRwZe0WdcjosSrjqaAQeEJ+OAjYz2
	XEblpOcjDw6mDFBSPrtCchTg18HAMIkID9imotoPubKcm2BjET5krpVRjMqgJXnUYHRpGGN5cAM3A
	/ryGS+TD7qgPoY9eRWrR+QwXj112Ev/b9Imsha/vSZvZrDxxRlDRkmNEY/k3BUy3IbLKf35aWsseU
	Z+MfIYJbHBpWNEZBGYranaGnyu89l9w3IP0z8dTznyW1GkckL+O2O6XVUPnFIxEPJVuISSsqxuyMB
	Z1VmDEFBqipTezuV+Qxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9iF7-00000009JzS-0iKX;
	Tue, 29 Apr 2025 10:31:13 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9hDt-000000097gx-27xN
	for linux-phy@lists.infradead.org;
	Tue, 29 Apr 2025 09:25:54 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-22401f4d35aso69682315ad.2
        for <linux-phy@lists.infradead.org>; Tue, 29 Apr 2025 02:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745918752; x=1746523552; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aNHSzTuJO9qrwmXkoGFBppKTK0tfmRMsHjRBAWKQAcU=;
        b=AWS+vn1Oc0P35WB8lJZfMpre45LpBLFsIkU19EuUqcx/w4XwjbY+K8aUx8QIBv1hkY
         ntiPHv8uwTrwd/gyvBtsopR2y27cPv3XWJbjGt8vMug+v3Ots6KtlhF60OybRk8ghhjh
         z4U6BWhSLe1FxkMvlE+/4qEJng0tY5HVQAMRn07zeOlQ9vWS99NOGD67Wlh2ORpNj4gc
         if2LGc/plHoKz2Zr0CmE8t6xTmAxy8ZaP45b9XABtJ1UMZkT1wfU/CkuV3ZK9y2iF7dh
         3UkdSfe2RuKvl+/6Xue5xttxUQBnVpMM2NVVAVCTPMs7HoiPNWahKeTccnSphl+r2V1x
         YUuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745918752; x=1746523552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aNHSzTuJO9qrwmXkoGFBppKTK0tfmRMsHjRBAWKQAcU=;
        b=TKpxSV52bKdq/H+FuwFBqpGUmvrE0qqbr38Uft3njIWlnkNugOq3Qszqe/GY0LMn6K
         a8S4S5dYka0f2WriIk1WNOmXvrTcazofc+m+drq0O2k4wh23zVgPd9oH3jPVvLAhgd7B
         9l/SleTPcAR/LcwiZT/tR08NxHv9IcOKDK/fVXR2oAHGnPrAgXeRmg4IviAi+v7nf1EC
         P1dr9f1VbJh1DUgwNq9wfDdUZ7PikLIcNJ20U+Jdr6urLC+2Z4nlKYBf68TkQ25Om1Lq
         yIlGCcGPIJ7PFYbx+O6sK25FD7t981YD5y8GurYJiMZv2ptFVtjxkwUVcGtu49yOLamm
         +CMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqntCjVd8TrvGqW5PIpyWYiqrso4nYsimR3K+pwPpTv7rbiVog2GeN2hpL+Y6REslGWSPWfU/tahU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8oF81vvpcI1NwLbsCGUSvW8ND9PJC72D+D3x+9WH6hfKIr7KX
	gViHiDvgeiZjwfALn0Dfx4W13NiEfJZVn85FHfhjYANXxsmfOiSz
X-Gm-Gg: ASbGncsKpjLCVKq2D6dubB/pLH/2HzYiGIQbNQ4pAbSr4gVwsBdBthxREzUwAZa+t/b
	2+tbXzv9eSpuUxnBnBDAdtu55vyTKx6zUoX+cupwi6Rh/qItS8tDY8pvY6ogC6wwxcopEZpe486
	O6ZHgX7afaztxalzPnIp9S/xCRLHyehm+Y7Xc44ho13zH513p7ICFCHbgBHo+e+dBxcwsRGPY0V
	t8IO98MpBET3ZoSg0JuUhbKsF0tF/zPlkgHRt4Gdn/pfK5mFx/ijnD20F4H4KnEWKevSEsxtFkj
	RQM0JqNKpGx7Xf3C0iB4smDLSZopk9JMohSrNzs=
X-Google-Smtp-Source: AGHT+IHb3XDR+CIyVLJfE/+/qfZBH7IaetKlrGWMj5W8hWYAtZ5uFrtXFPsJJcx6PAeNDXijkIAQxw==
X-Received: by 2002:a17:903:28d:b0:223:f408:c3cf with SMTP id d9443c01a7336-22de70276d4mr36675615ad.21.1745918752192;
        Tue, 29 Apr 2025 02:25:52 -0700 (PDT)
Received: from nuvole.. ([144.202.86.13])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db5221600sm97440105ad.213.2025.04.29.02.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 02:25:51 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: dmitry.baryshkov@oss.qualcomm.com
Cc: abel.vesa@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	kishon@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	mitltlatltl@gmail.com,
	robh@kernel.org,
	sfr@canb.auug.org.au,
	vkoul@kernel.org
Subject: Re: [PATCH v2 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: rework reg override handler
Date: Tue, 29 Apr 2025 17:23:29 +0800
Message-ID: <20250429092331.53054-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <n5z5atbxkwqllni6cgygcw5nn7z4w3yjznhpkaajw6tggenxb3@kxpk2e6vmvlj>
References: <n5z5atbxkwqllni6cgygcw5nn7z4w3yjznhpkaajw6tggenxb3@kxpk2e6vmvlj>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_022553_543266_FC6C0564 
X-CRM114-Status: GOOD (  27.16  )
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

T24gVHVlLCBBcHIgMjksIDIwMjUgYXQgMTI6NTjigK9BTSBEbWl0cnkgQmFyeXNoa292IDxkbWl0
cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+IE9uIFNhdCwgQXByIDI2LCAy
MDI1IGF0IDA0OjE0OjIzUE0gKzA4MDAsIFBlbmd5dSBMdW8gd3JvdGU6Cj4gPiBPbiBTYXQsIEFw
ciAyNiwgMjAyNSBhdCAzOjQx4oCvQU0gRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtv
dkBvc3MucXVhbGNvbW0uY29tPiB3cm90ZToKPiA+ID4gT24gV2VkLCBBcHIgMTYsIDIwMjUgYXQg
MDg6MDI6MDFQTSArMDgwMCwgUGVuZ3l1IEx1byB3cm90ZToKPiA+ID4gPiBJbiBkb3duc3RyZWFt
IHRyZWUsIG1hbnkgcmVnaXN0ZXJzIG5lZWQgdG8gYmUgb3ZlcnJpZGRlbiwgaXQgdmFyaWVzCj4g
PiA+ID4gZnJvbSBkZXZpY2VzIGFuZCBwbGF0Zm9ybXMsIHdpdGggdGhlc2UgcmVnaXN0ZXJzIGdl
dHRpbmcgbW9yZSwgYWRkaW5nCj4gPiA+ID4gYSBoYW5kbGVyIGZvciB0aGlzIGlzIGhlbHBmdWwu
Cj4gPiA+Cj4gPiA+IEl0IHNob3VsZCBiZSBub3RlZCB0aGF0IHByZXZpb3VzbHkgYWxsIHZhbHVl
cyB3ZXJlIGFwcGxpZWQgZHVyaW5nIF9pbml0Cj4gPiA+IHBoYXNlLCBiZWZvcmUgY2hlY2tpbmcg
dGhlIHN0YXR1cyBldGMuIE5vdyB0aGUgb3ZlcnJpZGVzIGFyZSBwcm9ncmFtbWVkCj4gPiA+IGZy
b20gdGhlIHNldF9tb2RlLiBTaG91bGQgeW91IHN0aWxsIHByb2dyYW0gc2FuZSBkZWZhdWx0cyBh
dCB0aGUgaW5pdAo+ID4gPiBzdGFnZSB0b28/Cj4gPiA+Cj4gPgo+ID4gSSB0aGluayBwcm9ncmFt
bWluZyBpbiBzZXRfbW9kZSBpcyBvay4gV2hlbiB3ZSBpbml0KGR3YzNfY29yZV9pbml0KSwgd2UK
PiA+IHNldF9tb2RlKGR3YzNfY29yZV9pbml0X21vZGUpIGxhdGVyLCBwbGVhc2UgY2hlY2sKPiA+
IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE0LjMvc291cmNlL2RyaXZlcnMv
dXNiL2R3YzMvY29yZS5jI0wyMjg3Cj4KPiBZZXMsIGJ1dCB0aGF0IGhhcHBlbnMgYWZ0ZXIgcmVh
ZGluZyBzdGF0dXMgcmVncywgZXRjLgo+Cj4gPiBBY3R1YWxseSwgaW4gdGhlIGRvd25zdHJlYW0s
IGFsbCB0aGUgdGhpbmdzIGFyZSBkb25lIGluIGluaXQsIGl0Cj4gPiBvdmVycmlkZXMgZmlyc3Qs
IHRoZW4gbWFza2VkIHdyaXRlIHRoZSBkZWF1bHRzLCBmaW5hbGx5IGl0IHNldF9tb2RlLAo+ID4g
eW91IGNhbiBjaGVjayBoZXJlCj4gPiBodHRwczovL2dpdGh1Yi5jb20vT25lUGx1c09TUy9hbmRy
b2lkX2tlcm5lbF9vbmVwbHVzX3NtODY1MC9ibG9iL29uZXBsdXMvc204NjUwX3ZfMTUuMC4wX3Bh
ZF9wcm8vZHJpdmVycy91c2IvcmVwZWF0ZXIvcmVwZWF0ZXItcXRpLXBtaWMtZXVzYjIuYyNMMzU2
Cj4KPiBJJ2Qgc3RpY2sgdG8gdGhpcyBhcHByb2FjaCB0b28uIFByb2dyYW0gZXZlcnl0aGluZyBp
biBpbml0LCB0aGVuCj4gcHJvZ3JhbSBtb2RlLWRlcGVuZGVudCByZWdzIGluIHNldF9tb2RlLgo+
CgpJZiBzbywgSSBkb24ndCBtaW5kIHByb2dyYW1taW5nIHRoZSBkZWZhdWx0cyBpbiBpbml0LCB0
aGVuIHByb2dyYW1taW5nCm92ZXJyaWRlcyBpbiBzZXRfbW9kZS4KCj4gPgo+ID4gPiBCVFcsIGlz
IHRoZXJlIGEgcmVhbCBuZWVkIHRvIG92ZXJyaWRlIHRob3NlIGZvciB0aGUgcGxhdGZvcm0geW91
IGFyZQo+ID4gPiB3b3JraW5nIG9uPyBDb3VsZCB5b3UgcGxlYXNlIHByb3ZpZGUgc29tZSBkZXRh
aWxzLCBtYXliZSBpbiB0aGUgY292ZXIKPiA+ID4gbGV0dGVyLgo+ID4KPiA+IEkgYW0gbm90IHF1
aXRlIHN1cmUsIHJlY2VudGx5LCBJIGV4cGlyZW5jZWQgbW9kZSBzd2l0Y2hpbmcgZmFpbHVyZSwK
PiA+IHdoZW4gSSBgZWNobyBkZXZpY2UgPiAvc3lzL2tlcm5lbC9kZWJ1Zy91c2IvYTYwMDAwMC51
c2IvbW9kZWAsIEV0aGVybmV0Cj4gPiBHYWRnZXQgd291bGRuJ3Qgd29yayBhZ2FpbiwgbXkgZGVz
a3RvcCBjYW4ndCBjb25uZWN0IHRvIGl0Lgo+Cj4gRG8geW91IGhhdmUgYXQgbGVhc3QgYSBsaXN0
IG9mIHRoZSBwcm9wZXJ0aWVzIC8gcmVnaXN0ZXJzIHRoYXQKPiBkb3duc3RyZWFtIHByb2dyYW1z
IG9uIHlvdXIgcGxhdGZvcm0/IEkgbWVhbiwgaXQncyBub3QgaW5mcmVxdWVudCB0aGF0Cj4gdmVu
ZG9yIGtlcm5lbCBpcyBtb3JlIHZlcnNhdGlsZSB0aGFuIG5lY2Vzc2FyeSwgYXMgaXQgaXMgYmVp
bmcgdXNlZAo+IGR1cmluZyBicmluZ3VwIC8gZXRjLiBJJ2Qgc3VnZ2VzdCB0byBsaW1pdCBzdXBw
b3J0ZWQgb3ZlcnJpZGVzIHRvIHRob3NlCj4gbmVjZXNzYXJ5IGZvciB5b3VyIHBsYXRmb3JtIChh
bmQgYWRkIGEgY29tbWVudCB0aGF0IHRoZXJlIHdlcmUgb3RoZXIKPiBhdmFpbGFibGUpLgo+CgpZ
ZXMsIEkgb25seSBhZGRlZCB0aGUgbmVjZXNzYXJ5IG92ZXJyaWRlcygweDU0LCBhbmQgbW9kZSBo
YW5kbGluZykuClBsZWFzZSBjaGVjawoKaHR0cHM6Ly9naXRodWIuY29tL09uZVBsdXNPU1MvYW5k
cm9pZF9rZXJuZWxfbW9kdWxlc19hbmRfZGV2aWNldHJlZV9vbmVwbHVzX3NtODY1MC9ibG9iL29u
ZXBsdXMvc204NjUwX3ZfMTUuMC4wX3BhZF9wcm8va2VybmVsX3BsYXRmb3JtL3Fjb20vcHJvcHJp
ZXRhcnkvZGV2aWNldHJlZS9vcGx1cy9vcGx1c19taXNjL29wbHVzLW1pc2MtMjM5MjYuZHRzaSNM
MjYKCkJlc3Qgd2lzaGVzLApQZW5neXUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
