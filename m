Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1ADBC282EC
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 07:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLrudslOgzsnmIEoJLT1+faU67QqbyvfH3ptBsCFH54=; b=cB6fx3AMVQmpA+
	UIJhibmz+SMJfhvzZksfYDw/JN/mGCCB8gkWt5qbUipjjminH1EbbBwos6g61dwDezmlDpxgeR1BB
	A5igkCPAN8/J4uLyu6fSpm1b+QQuA7fFZ105nI5YrpcWfaDuLTIZq0kvjnx6UI3nTXQKKdFz0BuzB
	ZuEYtRq2XrZCvUqbWhp1IBrgQzMaCGa2wes/g0bxkn3H4OEjpiKVR1+Q6EOK4hWn06royVUUKCwOE
	ONkSWaQeEVoIqGPZSGEMT5m2Mh15p2DyfH/Sk4pKv1SIXXr9eyiyWXK4cITgyBDN4HCOp/KL0v9qz
	js1Wi+CkSHzNMeAUGHZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuRDP-00000004tkH-1EI2;
	Tue, 18 Mar 2025 07:18:19 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuRDM-00000004tjH-1Ixk
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 07:18:17 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-22349bb8605so112579835ad.0
        for <linux-phy@lists.infradead.org>; Tue, 18 Mar 2025 00:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742282295; x=1742887095; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uL3J0kJ07qCQwLi/H8v/Z+UezU+LpDO7hkpWTExk8ys=;
        b=mtgfa0OLpjwI4m2oWciDAl1ATy5UFDW45IOP/Jw72GNM2Y6Zs1/JoZbCeZ1YeccheS
         NwOCMJ2MskrVchw3f8/iuAj+PEIXZfRICfwRuPzXA7v3KnDzj7yqt0BBk/L6mna4VOH2
         f9zt3buQGoPZq3Rg4FKDCY4nzl9guNdHG0D9HS49ClpB4K/p4fitYAY39hoYWBNVKEJC
         q4j1RfFcexjk4ZNfYsa/UYSKa00eSpAXeyjCf+TMQNpyuzyKjylj3jGc26d8f4hSP/F4
         t2r0E0bC8A+MfnLOG1GKLpabnvLtqYiT3FdlYqnqyBhtYUjaGrm091vdG4DuGTqFql3D
         jV1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742282295; x=1742887095;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uL3J0kJ07qCQwLi/H8v/Z+UezU+LpDO7hkpWTExk8ys=;
        b=onqauKE6boSqV/p/89mj4MiPsjbgRa+uhlTaQ0xq3y5yRNOKmsPmf0Dt3y8j9Hib/T
         +AairDDNSo/UYwrPTjjIVjqY9NJFDdgqVsJEq90Vplgj+pG21QNNS/5ysHZ+sIV7xOb4
         1W/UgnSGFtsE24gzFm6puJ8K0sRiLdOoaBi9pZWH+GY4THGNLfe2mXGmzMy+kySKCbaq
         cluUmGNciJUEFwv6TFTnw092PiPibRDB/WWxqy2MIXoxTyCxSzvEbZP/5iKxmB2D/2/F
         9EYnP5wdnIeToE32PZxwmQOdHeUzEgsjQQmFW80/IHKo7UpKWPlV1+9SqN2NKdsgtHuK
         ST4g==
X-Forwarded-Encrypted: i=1; AJvYcCUbl44cvKqaidc4XHUYczr+vkoR2MeMzb/316TouLNwScmp91Hm0ekj114rI1w7nSGddyJoUCBsRes=@lists.infradead.org
X-Gm-Message-State: AOJu0YzgtF/y57VqQsnSipWo05Sx8cMS4F/xDUvAFSzOiYnhTx6kWwvF
	4JPA8mHyl4CNqvSjhr7LEz0rVChupo+bn+xoutrfWmZl56l8jnWu0HuMtZVd1g==
X-Gm-Gg: ASbGncuuFpdTw0vnV4VXO23dsLEw9VPSmWdVCIpKRnJq+10kVtBqwhWVmWuJ6n/upAx
	e3tG02A9mLLNaXBGSzKmc0AAVTluzjiDd1OPZqaC8PD8XfATzw8FH1Xq0MfuMwfYPiubAq2Z+6Z
	D6DJw7XXZSasNl/99W/Q4Hk20hThAhKO9/dmtn4kNijC+F9YcizKHvNOA3fCVN8Ge475/Vb4S+Q
	uZrR294iIksw2kpYklFp/U1HYHet0Q6LwlDyg1IovtnHMPOytFHTCms7zy/Qjp2YMWthtAX6OTJ
	BodCx7XINT7QUrmtI+GVgguATsov6WxZic5qpzM0xf4qwXEZzcdOQLs1QZ0rldHIXhY=
X-Google-Smtp-Source: AGHT+IEzVk5IzlQIC5VwuXRJuSpzspEea6bADLr7EeZbZUTj69tT3vTxsaaX4dqVtRwwYUxDGF902w==
X-Received: by 2002:a17:903:3bad:b0:223:2cae:4a96 with SMTP id d9443c01a7336-225e0b0fa67mr181209535ad.42.1742282295391;
        Tue, 18 Mar 2025 00:18:15 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6ba7275sm87355885ad.115.2025.03.18.00.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 00:18:15 -0700 (PDT)
Date: Tue, 18 Mar 2025 12:47:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	andersson@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
	devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org,
	kishon@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
	kw@linux.com, lpieralisi@kernel.org, p.zabel@pengutronix.de,
	quic_nsekar@quicinc.com, robh@kernel.org, robimarko@gmail.com,
	vkoul@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <20250318071756.uilfhwfzgr5gds3o@thinkpad>
References: <20250305134239.2236590-1-george.moussalem@outlook.com>
 <DS7PR19MB8883E4A90C8AFF66BCAE14F49DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DS7PR19MB8883E4A90C8AFF66BCAE14F49DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_001816_357532_0419A9B8 
X-CRM114-Status: GOOD (  15.27  )
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

T24gV2VkLCBNYXIgMDUsIDIwMjUgYXQgMDU6NDE6MzBQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB3cm90ZToKPiBGcm9tOiBTcmljaGFyYW4gUmFtYWJhZGhyYW4gPHF1aWNfc3JpY2hhcmFAcXVp
Y2luYy5jb20+Cj4gCj4gRnJvbTogTml0aGVlc2ggU2VrYXIgPHF1aWNfbnNla2FyQHF1aWNpbmMu
Y29tPgo+IAo+IEFkZCBwaHkgYW5kIGNvbnRyb2xsZXIgbm9kZXMgZm9yIGEgMi1sYW5lIEdlbjIg
YW5kCj4gYSAxLWxhbmUgR2VuMiBQQ0llIGJ1cy4gSVBRNTAxOCBoYXMgOCBNU0kgU1BJIGludGVy
cnVwdHMgYW5kCj4gb25lIGdsb2JhbCBpbnRlcnJ1cHQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTml0
aGVlc2ggU2VrYXIgPHF1aWNfbnNla2FyQHF1aWNpbmMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNy
aWNoYXJhbiBSIDxxdWljX3NyaWNoYXJhQHF1aWNpbmMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEdl
b3JnZSBNb3Vzc2FsZW0gPGdlb3JnZS5tb3Vzc2FsZW1Ab3V0bG9vay5jb20+Cj4gLS0tCj4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MDE4LmR0c2kgfCAyMzIgKysrKysrKysrKysrKysr
KysrKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIzMCBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTAx
OC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUwMTguZHRzaQo+IGluZGV4IDg5
MTRmMmVmMGJjNC4uMzAxYTA0NGJkZjZkIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9pcHE1MDE4LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBx
NTAxOC5kdHNpCj4gQEAgLTE0Nyw2ICsxNDcsMjM0IEBAIHVzYnBoeTA6IHBoeUA1YjAwMCB7Cj4g
IAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gIAkJfTsKPiAgCj4gKwkJcGNpZTE6IHBjaWVANzgw
MDAgewo+ICsJCQljb21wYXRpYmxlID0gInFjb20scGNpZS1pcHE1MDE4IjsKPiArCQkJcmVnID0g
PDB4MDAwNzgwMDAgMHgzMDAwPiwKPiArCQkJICAgICAgPDB4ODAwMDAwMDAgMHhmMWQ+LAo+ICsJ
CQkgICAgICA8MHg4MDAwMGYyMCAweGE4PiwKPiArCQkJICAgICAgPDB4ODAwMDEwMDAgMHgxMDAw
PiwKPiArCQkJICAgICAgPDB4ODAxMDAwMDAgMHgxMDAwPjsKPiArCQkJcmVnLW5hbWVzID0gInBh
cmYiLAo+ICsJCQkJICAgICJkYmkiLAo+ICsJCQkJICAgICJlbGJpIiwKPiArCQkJCSAgICAiYXR1
IiwKPiArCQkJCSAgICAiY29uZmlnIjsKPiArCQkJZGV2aWNlX3R5cGUgPSAicGNpIjsKPiArCQkJ
bGludXgscGNpLWRvbWFpbiA9IDwwPjsKPiArCQkJYnVzLXJhbmdlID0gPDB4MDAgMHhmZj47Cj4g
KwkJCW51bS1sYW5lcyA9IDwxPjsKPiArCQkJbWF4LWxpbmstc3BlZWQgPSA8Mj47CgpXaHkgZG8g
eW91IHdhbnQgdG8gbGltaXQgbGluayBzcGVlZD8KCj4gKwkJCSNhZGRyZXNzLWNlbGxzID0gPDM+
Owo+ICsJCQkjc2l6ZS1jZWxscyA9IDwyPjsKPiArCj4gKwkJCXBoeXMgPSA8JnBjaWUxX3BoeT47
Cj4gKwkJCXBoeS1uYW1lcyA9InBjaWVwaHkiOwo+ICsKPiArCQkJcmFuZ2VzID0gPDB4ODEwMDAw
MDAgMCAweDgwMjAwMDAwIDB4ODAyMDAwMDAgMCAweDAwMTAwMDAwPiwJLyogSS9PICovCj4gKwkJ
CQkgPDB4ODIwMDAwMDAgMCAweDgwMzAwMDAwIDB4ODAzMDAwMDAgMCAweDEwMDAwMDAwPjsJLyog
TUVNICovCgpUaGVzZSByYW5nZXMgYXJlIHdyb25nLiBQbGVhc2UgY2hlY2sgd2l0aCBvdGhlciBE
VCBmaWxlcy4KClNhbWUgY29tbWVudHMgdG8gb3RoZXIgaW5zdGFuY2UgYXMgd2VsbC4KCj4gKwo+
ICsJCQltc2ktbWFwID0gPDB4MCAmdjJtMCAweDAgMHhmZjg+Owo+ICsKPiArCQkJaW50ZXJydXB0
cyA9IDxHSUNfU1BJIDExMSBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJCSAgICAgPEdJQ19T
UEkgMTEyIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8R0lDX1NQSSAxMTMgSVJR
X1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJIDExNCBJUlFfVFlQRV9MRVZF
TF9ISUdIPiwKPiArCQkJCSAgICAgPEdJQ19TUEkgMTE1IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+
ICsJCQkJICAgICA8R0lDX1NQSSAxMTYgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkgICAg
IDxHSUNfU1BJIDExNyBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJCSAgICAgPEdJQ19TUEkg
MTE4IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8R0lDX1NQSSAxMTkgSVJRX1RZ
UEVfTEVWRUxfSElHSD47Cj4gKwkJCWludGVycnVwdC1uYW1lcyA9ICJtc2kwIiwKPiArCQkJCQkg
ICJtc2kxIiwKPiArCQkJCQkgICJtc2kyIiwKPiArCQkJCQkgICJtc2kzIiwKPiArCQkJCQkgICJt
c2k0IiwKPiArCQkJCQkgICJtc2k1IiwKPiArCQkJCQkgICJtc2k2IiwKPiArCQkJCQkgICJtc2k3
IiwKPiArCQkJCQkgICJnbG9iYWwiOwo+ICsKPiArCQkJI2ludGVycnVwdC1jZWxscyA9IDwxPjsK
PiArCQkJaW50ZXJydXB0LW1hcC1tYXNrID0gPDAgMCAwIDB4Nz47Cj4gKwkJCWludGVycnVwdC1t
YXAgPSA8MCAwIDAgMSAmaW50YyAwIDE0MiBJUlFfVFlQRV9MRVZFTF9ISUdIPiwgLyogaW50X2Eg
Ki8KPiArCQkJCQk8MCAwIDAgMiAmaW50YyAwIDE0MyBJUlFfVFlQRV9MRVZFTF9ISUdIPiwgLyog
aW50X2IgKi8KPiArCQkJCQk8MCAwIDAgMyAmaW50YyAwIDE0NCBJUlFfVFlQRV9MRVZFTF9ISUdI
PiwgLyogaW50X2MgKi8KPiArCQkJCQk8MCAwIDAgNCAmaW50YyAwIDE0NSBJUlFfVFlQRV9MRVZF
TF9ISUdIPjsgLyogaW50X2QgKi8KPiArCj4gKwkJCWNsb2NrcyA9IDwmZ2NjIEdDQ19TWVNfTk9D
X1BDSUUxX0FYSV9DTEs+LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lFMV9BWElfTV9DTEs+LAo+ICsJ
CQkJIDwmZ2NjIEdDQ19QQ0lFMV9BWElfU19DTEs+LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lFMV9B
SEJfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfUENJRTFfQVVYX0NMSz4sCj4gKwkJCQkgPCZnY2Mg
R0NDX1BDSUUxX0FYSV9TX0JSSURHRV9DTEs+Owo+ICsJCQljbG9jay1uYW1lcyA9ICJpZmFjZSIs
Cj4gKwkJCQkgICAgICAiYXhpX20iLAo+ICsJCQkJICAgICAgImF4aV9zIiwKPiArCQkJCSAgICAg
ICJhaGIiLAo+ICsJCQkJICAgICAgImF1eCIsCj4gKwkJCQkgICAgICAiYXhpX2JyaWRnZSI7Cj4g
Kwo+ICsJCQlyZXNldHMgPSA8JmdjYyBHQ0NfUENJRTFfUElQRV9BUkVTPiwKPiArCQkJCSA8Jmdj
YyBHQ0NfUENJRTFfU0xFRVBfQVJFUz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BDSUUxX0NPUkVfU1RJ
Q0tZX0FSRVM+LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lFMV9BWElfTUFTVEVSX0FSRVM+LAo+ICsJ
CQkJIDwmZ2NjIEdDQ19QQ0lFMV9BWElfU0xBVkVfQVJFUz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BD
SUUxX0FIQl9BUkVTPiwKPiArCQkJCSA8JmdjYyBHQ0NfUENJRTFfQVhJX01BU1RFUl9TVElDS1lf
QVJFUz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BDSUUxX0FYSV9TTEFWRV9TVElDS1lfQVJFUz47Cj4g
KwkJCXJlc2V0LW5hbWVzID0gInBpcGUiLAo+ICsJCQkJICAgICAgInNsZWVwIiwKPiArCQkJCSAg
ICAgICJzdGlja3kiLAo+ICsJCQkJICAgICAgImF4aV9tIiwKPiArCQkJCSAgICAgICJheGlfcyIs
Cj4gKwkJCQkgICAgICAiYWhiIiwKPiArCQkJCSAgICAgICJheGlfbV9zdGlja3kiLAo+ICsJCQkJ
ICAgICAgImF4aV9zX3N0aWNreSI7Cj4gKwo+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsK
PiArCQkJcGNpZUAwIHsKPiArCQkJCWRldmljZV90eXBlID0gInBjaSI7Cj4gKwkJCQlyZWcgPSA8
MHgwIDB4MCAweDAgMHgwIDB4MD47Cj4gKwo+ICsJCQkJI2FkZHJlc3MtY2VsbHMgPSA8Mz47Cj4g
KwkJCQkjc2l6ZS1jZWxscyA9IDwyPjsKPiArCQkJCXJhbmdlczsKPiArCQkJfTsKPiArCQl9Owo+
ICsKPiArCQlwY2llMV9waHk6IHBoeUA3ZTAwMHsKPiArCQkJY29tcGF0aWJsZSA9ICJxY29tLGlw
cTUwMTgtdW5pcGh5LXBjaWUtcGh5IjsKPiArCQkJcmVnID0gPDB4MDAwN2UwMDAgMHg4MDA+Owo+
ICsKPiArCQkJY2xvY2tzID0gPCZnY2MgR0NDX1BDSUUxX1BJUEVfQ0xLPjsKPiArCj4gKwkJCXJl
c2V0cyA9IDwmZ2NjIEdDQ19QQ0lFMV9QSFlfQkNSPiwKPiArCQkJCSA8JmdjYyBHQ0NfUENJRTFQ
SFlfUEhZX0JDUj47Cj4gKwo+ICsJCQkjY2xvY2stY2VsbHMgPSA8MD47Cj4gKwoKUGxlYXNlIGdl
dCByaWQgb2YgdGhlc2UgbmV3bGluZXMgYmV0d2VlbiAtY2VsbHMgcHJvcGVydGllcy4KCi0gTWFu
aQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7g
r40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
