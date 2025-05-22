Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF82DC54E90
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 08:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QryT7sLHVwndUQogPdHKVleCW633MuIekTQTWksCWZk=; b=C5/cP8mBxS0CvA
	A+frNuBRTqEacHvAoYqDxAoRxHVdjt8xoZXE3GVAKYbkKr3Qkfh8YqSicSfVZbNHNZmXNl3w913NO
	raTNg2f/aVklXmrT4vWhXJ07Z7FhSWkKV0x+dQ97ERrmt9dx5au52FvErm5KgoFssGanIX6lxjd1U
	SN1jm1wisVAp0PcxSnYha2opNaiuhUYZlYIcb+htQpG/7Ww5NvKb87FkY4MC3jG0DGLeG1uILn0+K
	1LfTCZXUDIsRTpz8GY23TPd2SGf4MEr6HWgDY8ouMg5uW+weQ9ihRWSI7qAthQm8+E7LnaH6igU3e
	RrKSqDp1eF6I+ZeYIapA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI1m5-00000000OeG-1cCk;
	Thu, 22 May 2025 08:59:37 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI1g3-00000000N4x-47Tu
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 08:53:25 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-73712952e1cso7172551b3a.1
        for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 01:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747904003; x=1748508803; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wE/Nk3n7Qj543anMoi03EY1HELsp/mGZ1M/Gx4pgSIs=;
        b=uZrlFswxgS20neMyIEK8nGrqB2KpPmQUoJQBbVZlMa8fZ3eCs+TerF/WP0veKBLiyH
         8iOow7PENlSeJO/pdoXvjyz35V9masYNpNPBRwfnypUzHL++s03WFXuKpuR5wyl7OmlP
         KJrMRjbKLEBXtCO4NVOFA4/gC0/L3hLclzPTHVHRkEYCIHtGC76sOkmb+XrOq24wyKFe
         B31U4S1kleozlWLQGM7bLY8J9tSLQwq0Mirv72axb39M77RJc4memBrLixS9mdz8FFRY
         fTGo7xMqZaudcb/Zum6yV4BNOPxIkMQAxkYwMOXN+fPGrVlmyd7pdu0orXTudPw5ETYX
         jgXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747904003; x=1748508803;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wE/Nk3n7Qj543anMoi03EY1HELsp/mGZ1M/Gx4pgSIs=;
        b=NVjtdP94yeQTVGbGu6de4waM0Q8vCNfSaHD8WWo7iU2Pnr2+Aw3Cv/p/wUdXjb7rn8
         LrF24LBwTflowXCaBbmoNE7IEIPAcsSbTaUtR42QraAzBGaFVfZYEz+dX6syeLyxNXOQ
         f7H/Kvfr9Wx8U279C5MfkMQn3gz7OKwzuag7NBO5c3XJiNLHxuIYSxoH3mojPiSsjRYY
         QhGrgvPmMzK2RKJK0m6IUTcF2SM3gn7JWkBYKbzkV7UXoDizYkxXS+uZngs1sQ3/+9Pa
         EsO4b14F0BpMhl+rYdqAlcQ33Ks+wvtAGzlLfBJRKRSoOux8r9Hpa5iCAGLOBeBRm8qE
         pt8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVuu4ktnl7reoDooG6jkbAN/knxrYFXdQl70k7Mx8sZpzijr4DXdsJJ/K2Qwsu5fIakMgTJbIzbMbU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQhhMTjVcW9goyQ1yMcqhzDz4TI7xBe3FM7T+w93jglrdzWnpN
	sAGACDPizwsDcVpU12eWLjbrIm5JeQQD+Da2sEvY8GVyYw1oEUuGpUAOLEIB+vqnTYEeMkxamQp
	knF0=
X-Gm-Gg: ASbGncsFQH+1nobCXZeyBEgVAFWZyEqofYaZaSdjOzSf0Sh3YqDanQmU3EvVXcAaoRh
	itFIYPK9LnxUpbnrDie4h/4ht2y6yEltgMjKDdtc+WqoW/181WkiW75AqN5XbK5745C16dNHTzV
	53BlIarlM7sBsuCoJ15RAB4wGksnbfXm0yKZxrLI82z2Atia5z6/INj6IF6ZcZBCeEf75UY9Jk0
	PPATPMKGrP19hnXHjWYghMsqlnm5ZfmquFJX3tTeNvFfrA+onxcI7nqgctcyvwsq2cNfAaTPbFR
	ojQ220dUlq9Y45jkxRZZ/idtWaNuIruhdCUqRyyypZyvQxVUxN5MUgZasfVhZg==
X-Google-Smtp-Source: AGHT+IF5uWmk4PnvIThnJSvV0zNx6s2lAIFa7Qq/vftR90Qhtr6lQ7tpJ/xet55CCmVXUt9jRfsojQ==
X-Received: by 2002:a05:6a21:3385:b0:20d:df67:4921 with SMTP id adf61e73a8af0-2170cafa33dmr33994739637.4.1747904003020;
        Thu, 22 May 2025 01:53:23 -0700 (PDT)
Received: from thinkpad ([120.60.130.60])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a96e589esm10810267b3a.9.2025.05.22.01.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 01:53:22 -0700 (PDT)
Date: Thu, 22 May 2025 14:23:16 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, bvanassche@acm.org, 
	andersson@kernel.org, neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com, quic_cang@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 07/11] phy: qcom-qmp-ufs: Remove qmp_ufs_exit() and
 Inline qmp_ufs_com_exit()
Message-ID: <qrope222shpeqvhe2dnh4p4jmznuu7tr3jh2zujwbbd3khg4yo@wm2epj5ydefc>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-8-quic_nitirawa@quicinc.com>
 <untqxy76skl53c55bdjz5usk4seuypjqbxkfub2qeqz42mewqr@r4cutmkvy235>
 <79d2f373-ee53-4cd2-b228-171daf3adcb7@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <79d2f373-ee53-4cd2-b228-171daf3adcb7@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_015324_070054_8A7EBE53 
X-CRM114-Status: GOOD (  22.31  )
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

T24gVGh1LCBNYXkgMjIsIDIwMjUgYXQgMDM6NDk6MTJBTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gCj4gCj4gT24gNS8yMS8yMDI1IDc6MTkgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3
cm90ZToKPiA+IE9uIFRodSwgTWF5IDE1LCAyMDI1IGF0IDA5OjU3OjE4UE0gKzA1MzAsIE5pdGlu
IFJhd2F0IHdyb3RlOgo+ID4gPiBxbXBfdWZzX2V4aXQoKSBpcyBhIHdyYXBwZXIgZnVuY3Rpb24u
IEl0IG9ubHkgY2FsbHMgcW1wX3Vmc19jb21fZXhpdCgpLgo+ID4gPiBSZW1vdmUgaXQgdG8gc2lt
cGxpZnkgdGhlIHVmcyBwaHkgZHJpdmVyLgo+ID4gPiAKPiA+IAo+ID4gT2theSwgc28geW91IGFy
ZSBkb2luZyBpdCBub3cuLi4KPiAKPiBZZXMKPiAKPiA+IAo+ID4gPiBBZGRpdG9uYWxseSBwYXJ0
aWFsIElubGluZShkcm9wcGluZyB0aGUgcmVzZXQgYXNzZXJ0KSBxbXBfdWZzX2NvbV9leGl0Cj4g
PiA+IGludG8gcW1wX3Vmc19wb3dlcl9vZmYgZnVuY3Rpb24gdG8gYXZvaWQgdW5uZWNlc3Nhcnkg
ZnVuY3Rpb24gY2FsbC4KPiA+ID4gCj4gPiAKPiA+IFdoeSBhcmUgeW91IGRyb3BwaW5nIHRoZSBy
ZXNldF9hc3NlcnQoKT8KPiAKPiBUaGlzIHdhcyBub3QgYWxpZ25pbmcgdG8gUGh5IHByb2dyYW1t
aW5nIGd1aWRlIC4KPiAKCllvdSBzaG91bGQgbWVudGlvbiBpdCBpbiB0aGUgZGVzY3JpcHRpb24u
Cgo+IAo+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE5pdGluIFJhd2F0IDxxdWljX25pdGlyYXdh
QHF1aWNpbmMuY29tPgo+ID4gPiBSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5
LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgo+ID4gPiAtLS0KPiA+ID4gICBkcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMgfCAxOSArKysrKy0tLS0tLS0tLS0tLS0tCj4g
PiA+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCj4g
PiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1w
LXVmcy5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gPiA+IGlu
ZGV4IGE1OTc0YTFmYjViYi4uZmNhNDdlNWU4YmYwIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKPiA+ID4gKysrIGIvZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gPiA+IEBAIC0xNzU4LDE5ICsxNzU4LDYgQEAg
c3RhdGljIHZvaWQgcW1wX3Vmc19pbml0X3JlZ2lzdGVycyhzdHJ1Y3QgcW1wX3VmcyAqcW1wLCBj
b25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcKPiA+ID4gICAJCXFtcF91ZnNfaW5pdF9hbGwocW1wLCAm
Y2ZnLT50YmxzX2hzX2IpOwo+ID4gPiAgIH0KPiA+ID4gLXN0YXRpYyBpbnQgcW1wX3Vmc19jb21f
ZXhpdChzdHJ1Y3QgcW1wX3VmcyAqcW1wKQo+ID4gPiAtewo+ID4gPiAtCWNvbnN0IHN0cnVjdCBx
bXBfcGh5X2NmZyAqY2ZnID0gcW1wLT5jZmc7Cj4gPiA+IC0KPiA+ID4gLQlyZXNldF9jb250cm9s
X2Fzc2VydChxbXAtPnVmc19yZXNldCk7Cj4gPiA+IC0KPiA+ID4gLQljbGtfYnVsa19kaXNhYmxl
X3VucHJlcGFyZShxbXAtPm51bV9jbGtzLCBxbXAtPmNsa3MpOwo+ID4gPiAtCj4gPiA+IC0JcmVn
dWxhdG9yX2J1bGtfZGlzYWJsZShjZmctPm51bV92cmVncywgcW1wLT52cmVncyk7Cj4gPiA+IC0K
PiA+ID4gLQlyZXR1cm4gMDsKPiA+ID4gLX0KPiA+ID4gLQo+ID4gPiAgIHN0YXRpYyBpbnQgcW1w
X3Vmc19wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4gPiA+ICAgewo+ID4gPiAgIAlzdHJ1Y3Qg
cW1wX3VmcyAqcW1wID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gPiA+IEBAIC0xODUxLDcgKzE4
MzgsMTEgQEAgc3RhdGljIGludCBxbXBfdWZzX3Bvd2VyX29mZihzdHJ1Y3QgcGh5ICpwaHkpCj4g
PiA+ICAgCXFwaHlfY2xyYml0cyhxbXAtPnBjcywgY2ZnLT5yZWdzW1FQSFlfUENTX1BPV0VSX0RP
V05fQ09OVFJPTF0sCj4gPiA+ICAgCQkJU1dfUFdSRE4pOwo+ID4gPiAtCXFtcF91ZnNfY29tX2V4
aXQocW1wKTsKPiA+ID4gKwkvKiBUdXJuIG9mZiBhbGwgdGhlIHBoeSBjbG9ja3MgKi8KPiA+IAo+
ID4gWW91IHNob3VsZCBkcm9wIHRoaXMgYW5kIGJlbG93IGNvbW1lbnQuIFRoZXkgYWRkIG5vIHZh
bHVlLgo+IAo+IENvbW1lbnRzIGFyZSBhY3R1YWxseSBwcm92aWRlZCBmb3IgZWFjaCBvcGVyYXRp
b24gd2l0aGluIHFtcF91ZnNfcG93ZXJfb2ZmCj4gd2hpY2ggYWN0dWFsbHkgZmFjaWxpdGF0ZSB1
bmRlcnN0YW5kaW5nIG9mIGFsbCBhY3Rpb25zIHBlcmZvcm1lZCBieSB0aGUKPiBmdW5jdGlvbiB3
aGljaCBtYXkgbm90IGJlIGZ1bGx5IGNsZWFyIGJ5IGNvZGUuIEhlbmNlCj4gSSB0aG91Z2h0IHRv
IGtlZXAgdGhlIGNvbW1lbnRzLiBCdXQgSWYgeW91IGluc2lzdCBpJ2xsIHJlbW92ZS4KPiAKCkZv
ciBjb21wbGV4IGNvZGUsIGNvbW1lbnQgc2hvdWxkIGJlIGFkZGVkIGluZGVlZC4gQnV0IGZvcgpj
bGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZSgpIGFuZCByZWd1bGF0b3JfYnVsa19kaXNhYmxlKCks
IE5PLiBJdCBpcyBvYnZpb3VzCnRoYXQgdGhleSB0dXJuIG9mZiBjbG9jayBhbmQgcmVndWxhdG9y
cy4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
