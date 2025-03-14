Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A27B6C282EC
	for <linux-phy@archiver.kernel.org>; Fri, 14 Mar 2025 14:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdHuH15MTS95s8JiPKfr/AV0Utwt2CEvvw4Ff0zDIv4=; b=3x/8s7qfpGhSx8
	Agf0N96X8NfiZ8ToADieOwjUIRshEghcCfpnn6Gfy4iFnIuGkg9wUUdDoYshDIkzlRYYOhz5x99QX
	yCo4Z4H67G4Tczb7xNt0/oFtwDW05TSmVlICyNr2H3xvWcIUVOQnNfO4hUT2Iv8hR4YZtIhHUACym
	pkisLEwdYxygnOjssOE3pUML1RlJvq+1QwNQbgEqTbfBQJRdW44wR+qKYIj18QISsMzMSUz4EgPmv
	6/4EZij6ZWsj0E3YjZM0Im+B45TCFKbPoJKkeCeGn7GzVIavpxhfg1F1BDZ4luULkPTiyNwmxkWz8
	AcIDTqPttg4oG6umjCdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6QR-0000000ET7W-1lwN;
	Fri, 14 Mar 2025 14:54:15 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6QP-0000000ET78-1SG9
	for linux-phy@lists.infradead.org;
	Fri, 14 Mar 2025 14:54:14 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2ff80290e44so4810700a91.0
        for <linux-phy@lists.infradead.org>; Fri, 14 Mar 2025 07:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741964052; x=1742568852; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dsQQtVO/hGMC4LT3OjrS/iAkJsL7ea7avit69Kt1D9g=;
        b=bFT7PcVAlk4kOkhShYKlUEppNBI99lE4zTpzw53go5X5LK2aoYAStibnvFRXGamw6/
         c+v4aCPZwEJqSpuhG5+4dYFWPGUx5BffI5FFV+Sn5F+BNDNSSsUxsFfkyXV9NNd9/SHE
         Vgt1Za5UGTiVIlAH1xI+mKCREGNywpDtx/jEYOjaqtQzZqyETfh6KknGT86V6M6gZ5IP
         Y43T83RK75ab2G47DITMsOcPf1fRWa4GeDx9oZICp30nqSulmn4skmjZfTyZl3+3SJn/
         XZhNorbti4WGCYaDGwPtv4+H+2CRQOp+ZLpgDUt13hWE2hrOpzhbcc6yyW8cNs9bwA9l
         jWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741964052; x=1742568852;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dsQQtVO/hGMC4LT3OjrS/iAkJsL7ea7avit69Kt1D9g=;
        b=Lr51yqMKk9kFN4nivrXZKiq4AyalTLBESeNFKlhk4c2kEi0SWyL+wBB8K97RndBYV/
         XqCzyggaygq+TqK2zRk/GikLfTOMaZU+oGJlfNqvU7FJrQfBZBavHpAg1o/DwhOOwSMK
         WEnC0QdaGiZyO8L6wUQCZ30ihtg+dHLfPHXF2XZsAgMjv3fePgOSwa97sAiP/U6BXm5X
         lA96mJ7ti5YRoo6dGFet93WA5wjXK5nP2kxa6lE08pilDaVfym72q1gyDLeSNcoiFFbB
         45ayUMCPiwkbDyi7q0ZMQzQ6SsyqXfRLyvc+ypEox8qsmkZWmwmjyun//EFsCNU5eQdJ
         k1KA==
X-Forwarded-Encrypted: i=1; AJvYcCUTzBYIGAz/e7loE+iwxQ1SEC1uGd1R0ELyYdQYoYiPgmle90p/WyI4aHDwt16B83SyKvbpaPnSlRk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPwz+9Onw5EggPaHPJX6btoFDan49OEESq3rNKt7hITE724Qc2
	+P69XX22oztUD5O6kibAecom9OEUh4QKvk6NrdEmdUjF1GdrrcRomRAHtVs3VA==
X-Gm-Gg: ASbGncvtdBoKvM4sv8D/80sUwxM5S8QATyFXpJaRnQrNNlAfFUWvNvRy75h/zpI3gOh
	TQUuAjt5vC3c6IcE9Ms4bHAkytXi9E40SXKtpuVIiDDa3qW6vkqMlIMG+Romwwe7LIpKIGOnhK6
	7n9RiKK4xWXgBKI69UkGCy5ooWiEeNLgbPdrERGCXxTvRz7YLjxiG9YPj4Qs1BhphoM/lD6tYJ9
	TvS9zTIyOPsSYvFRwsTi24FTwPPWJcT7uAI+q7j1QfhZTFb7h8ZZAu0nf/FzyY5X0bfhvj3v3O3
	pS0IdYlENSNGP84YkrxV9wbSdzDY8QrG4QQ3yRHj7V3X/WGxqHgHfZCu
X-Google-Smtp-Source: AGHT+IHzKryo+V7jF5cXWjTyfNfCm3Y69vTnLwXkAPKHfg34JnPxyDQUu9P0t75RNjjyMzo4OR6/iA==
X-Received: by 2002:a05:6a21:4d05:b0:1f5:591b:4f82 with SMTP id adf61e73a8af0-1f5c1184768mr4519574637.16.1741964052644;
        Fri, 14 Mar 2025 07:54:12 -0700 (PDT)
Received: from thinkpad ([120.56.195.144])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73711694e69sm3054059b3a.141.2025.03.14.07.54.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 07:54:12 -0700 (PDT)
Date: Fri, 14 Mar 2025 20:24:07 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>, kishon@kernel.org,
	p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org,
	abel.vesa@linaro.org, quic_qianyu@quicinc.com,
	neil.armstrong@linaro.org, quic_devipriy@quicinc.com,
	konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/2] phy: qcom: qmp-pcie: Add PCIe PHY no_csr reset
 support
Message-ID: <20250314145407.5uuw7ucrdhca4z5i@thinkpad>
References: <20250226103600.1923047-1-quic_wenbyao@quicinc.com>
 <e556e3c9-93ee-494a-be35-9353dc5718e4@quicinc.com>
 <Z89Ek8Y7TRSgTuMg@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z89Ek8Y7TRSgTuMg@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_075413_384963_B98F5BCD 
X-CRM114-Status: GOOD (  28.63  )
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

T24gVHVlLCBNYXIgMTEsIDIwMjUgYXQgMDE6Mjk6MTVBTSArMDUzMCwgVmlub2QgS291bCB3cm90
ZToKPiBPbiAxMC0wMy0yNSwgMTY6NTgsIFdlbmJpbiBZYW8gKENvbnN1bHRhbnQpIHdyb3RlOgo+
ID4gT24gMi8yNi8yMDI1IDY6MzUgUE0sIFdlbmJpbiBZYW8gd3JvdGU6Cj4gPiA+IFRoZSBzZXJp
ZXMgYWltcyB0byBza2lwIHBoeSByZWdpc3RlciBwcm9ncmFtbWluZyBhbmQgZHJpdmUgUENJZSBQ
SFkgd2l0aAo+ID4gPiByZWdpc3RlciBzZXR0aW5nIHByb2dyYW1tZWQgaW4gYm9vdGxvYWRlciBi
eSBzaW1wbHkgdG9nZ2xpbmcgbm9fY3NyIHJlc2V0LAo+ID4gPiB3aGljaCBvbmNlIHRvZ2dsbGVk
LCBQSFkgaGFyZHdhcmUgd2lsbCBiZSByZXNldCB3aGlsZSBQSFkgcmVnaXN0ZXJzIGFyZQo+ID4g
PiByZXRhaW5lZC4KPiA+ID4gCj4gPiA+IEZpcnN0LCBkZXRlcm1pbmUgd2hldGhlciBQSFkgc2V0
dGluZyBjYW4gYmUgc2tpcHBlZCBieSBjaGVja2luZwo+ID4gPiBRUEhZX1NUQVJUX0NUUkwgcmVn
aXN0ZXIgYW5kIHRoZSBleGlzdGVuY2Ugb2Ygbm9jc3IgcmVzZXQuIElmIGl0IGlzCj4gPiA+IHBy
b2dyYW1tZWQgYW5kIG5vX2NzciByZXNldCBpcyBzdXBwb3J0ZWQsIGRvIG5vX2NzciByZXNldCBh
bmQgc2tpcCBCQ1IKPiA+ID4gcmVzZXQgd2hpY2ggd2lsbCByZXNldCBlbnRpcmUgUEhZLgo+ID4g
PiAKPiA+ID4gVGhpcyBzZXJpZXMgYWxzbyByZW1vdmUgaGFzX25vY3NyX3Jlc2V0IGZsYWcgaW4g
cW1wX3BoeV9jZmcgc3RydWN0dXJlIGFuZAo+ID4gPiBkZWNpZGUgd2hldGhlciB0aGUgUEhZIHN1
cHBvcnRzIG5vY3NyIHJlc2V0IGJ5IGNoZWNraW5nIHRoZSBleGlzdGVuY2Ugb2YKPiA+ID4gbm9j
c3IgcmVzZXQgaW4gZGV2aWNlIHRyZWUuCj4gPiA+IAo+ID4gPiBUaGUgc2VyaWVzIGFyZSB0ZXN0
ZWQgb24gWDFFODAxMDAtUUNQIGFuZCBIREs4NTUwLgo+ID4gPiAKPiA+ID4gVGhlIGNvbW1pdCBt
ZXNzYWdlcyBvZiB0aGlzIHBhdGNoc2V0IGhhdmUgYmVlbiBtb2RpZmllZCBiYXNlZCBvbiBjb21t
ZW50cwo+ID4gPiBhbmQgc3VnZ2VzdGlvbnMuCj4gPiA+IAo+ID4gPiBDaGFuZ2VzIGluIHY1Ogo+
ID4gPiAtIEFkZCBhIGNoZWNrIHdoZXRoZXIgdGhlIGluaXQgc2VxdWVuY2VzIGFyZSBleGlzdCBp
ZiB0aGUgUEhZIG5lZWRzIHRvIGJlCj4gPiA+ICAgIGluaXRpYWxpemVkIHRvIFBhdGNoIDIvMi4K
PiA+ID4gLSBMaW5rIHRvIHY0OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTAyMjAx
MDIyNTMuNzU1MTE2LTEtcXVpY193ZW5ieWFvQHF1aWNpbmMuY29tLwo+ID4gPiAKPiA+ID4gQ2hh
bmdlcyBpbiB2NDoKPiA+ID4gLSBBZGQgUGhpbGlwcCdzIFJldmlld2VkLWJ5IHRhZyB0byBQYXRj
aCAxLzIuCj4gPiA+IC0gVXNlIFBIWSBpbnN0ZWFkIG9mIHBoeSBpbiBjb21tZW50cyBpbiBQYXRj
aCAyLzIuCj4gPiA+IC0gVXNlICJpZiAocW1wLT5ub2Nzcl9yZXNldCkiIGluc3RlYWQgb2YgImlm
ICghcW1wLT5ub2Nzcl9yZXNldCkiIGluCj4gPiA+ICAgIGZ1bmN0aW9uIHFtcF9wY2llX2V4aXQg
Zm9yIHJlYWRhYmlsaXR5IGluIFBhdGNoIDIvMi4KPiA+ID4gLSBVc2UgZ290byBzdGF0ZW1lbnRz
IGluIGZ1bmN0aW9uIHFtcF9wY2llX3Bvd2VyX29uIGFuZCBxbXBfcGNpZV9wb3dlcl9vZmYKPiA+
ID4gICAgZm9yIHJlYWRhYmlsaXR5IGluIFBhdGNoIDIvMi4KPiA+ID4gLSBSZWZpbmUgdGhlIGNv
bW1lbnQgb2Ygd2h5IG5vdCBjaGVja2luZyBxbXAtPnNraXBfaW5pdCB3aGVuIHJlc2V0IFBIWSBp
bgo+ID4gPiAgICBmdW5jdGlvbiBxbXBfcGNpZV9wb3dlcl9vZmYgaW4gUGF0Y2ggMi8yLgo+ID4g
PiAtIExpbmsgdG8gdjM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDIxNDEwNDUz
OS4yODE4NDYtMS1xdWljX3dlbmJ5YW9AcXVpY2luYy5jb20vCj4gPiA+IAo+ID4gPiBDaGFuZ2Vz
IGluIHYzOgo+ID4gPiAtIFJlcGxhY2UgZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUg
d2l0aAo+ID4gPiAgICBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFsX2V4Y2x1c2l2ZSB3
aGVuIGdldCBwaHlfbm9jc3IgcmVzZXQKPiA+ID4gICAgY29udHJvbCBpbiBQYXRjaCAxLzIuCj4g
PiA+IC0gRG8gbm90IGlnbm9yZSAtRUlOVkFMIHdoZW4gZ2V0IHBoeV9ub2NzciByZXNldCBjb250
cm9sIGluIFBhdGNoIDEvMi4KPiA+ID4gLSBSZXBsYWNlIHBoeV9pbml0aWFsaXplZCB3aXRoIHNr
aXBfaW5pdCBpbiBzdHJ1Y3QgcW1wX3BjaWUgaW4gUGF0Y2ggMi8yLgo+ID4gPiAtIEFkZCBhIGNv
bW1lbnQgdG8gd2h5IG5vdCBjaGVjayBxbXAtPnNraXBfaW5pdCBpbiBmdW5jdGlvbgo+ID4gPiAg
ICBxbXBfcGNpZV9wb3dlcl9vZmYgaW4gUGF0Y2ggMi8yLgo+ID4gPiAtIExpbmsgdG8gdjI6IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDIxMTA5NDIzMS4xODEzNTU4LTEtcXVpY193
ZW5ieWFvQHF1aWNpbmMuY29tLwo+ID4gPiAKPiA+ID4gQ2hhbmdlcyBpbiB2MjoKPiA+ID4gLSBB
ZGQgQWJlbCdzIGFuZCBNYW5pdmFubmFuJ3MgUmV2aWV3ZWQtYnkgdGFnIHRvIFBhdGNoIDEvMi4K
PiA+ID4gLSBSZWZpbmUgY29tbWl0IG1zZyBvZiBQYXRjaCAyLzIuCj4gPiA+IC0gTGluayB0byB2
MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwMTIxMDk0MTQwLjQwMDY4MDEtMS1x
dWljX3dlbmJ5YW9AcXVpY2luYy5jb20vCj4gPiA+IAo+ID4gPiBLb25yYWQgRHliY2lvICgxKToK
PiA+ID4gICAgcGh5OiBxY29tOiBwY2llOiBEZXRlcm1pbmUgaGFzX25vY3NyX3Jlc2V0IGR5bmFt
aWNhbGx5Cj4gPiA+IAo+ID4gPiBRaWFuZyBZdSAoMSk6Cj4gPiA+ICAgIHBoeTogcWNvbTogcW1w
LXBjaWU6IEFkZCBQSFkgcmVnaXN0ZXIgcmV0ZW50aW9uIHN1cHBvcnQKPiA+ID4gCj4gPiA+ICAg
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYyB8IDg2ICsrKysrKysrKysr
KysrKysrLS0tLS0tLQo+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA2MyBpbnNlcnRpb25zKCspLCAy
MyBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IAo+ID4gPiBiYXNlLWNvbW1pdDogYmNmMmFjZDhm
NjRiMGE1NzgzZGVlZWI1ZmQ3MGM2MTYzZWM1YWNkNwo+ID4gCj4gPiBIaSwgZG8geW91IGhhdmUg
YW55IGZ1dGhlciBjb21tZW50cz8KPiAKPiBQYXRjaGVzIGxndG0sIEl0IHdvdWxkIGJlIGdyZWF0
IGlmIHRoaXMgd2FzIHRlc3RlZCBieSBzb21lb25lIGFzIHdlbGwuLi4KPiBBYmVsLCBTdGVwaGFu
LCBOZWlsIGNhbiB5b3UgZm9sa3MgdGVzdCB0aGlzIGFuZCBwcm92aWRlIFQtQgo+IAoKSSB0ZXN0
ZWQgdGhlIHByZXZpb3VzIHZlcnNpb24gYW5kIGl0IHdvcmtlZCB3ZWxsIG9uIFgxUDQwMTAwLUNS
RC4gV2lsbCBnaXZlIHRoaXMKdmVyc2lvbiBhIGdvIGFuZCBnaXZlIG15IHRhZy4KCj4gSSBhbSBh
bHNvIGNvbmNlcm5lZCBhYm91dCBib290bG9hZGVyIGFzc3VtcHRpb25zIGVzcCBpZiB0aGUgUWNv
bSBib290Cj4gY2hhaW4gaXMgc2tpcHBlZAo+IAoKSW4gdGhhdCBjYXNlLCBzb21lb25lIHNob3Vs
ZCBhZGQgdGhlIFBIWSBpbml0IHNlcXVlbmNlIHRvIHRoZSBkcml2ZXIuIFRoYXQncyB3aHkKSSB3
YW50ZWQgdG8gaGF2ZSB0aGUgY2hlY2sgaW4gcGxhY2UgdG8gYXZvaWQgc2lsZW50bHkgZmFpbGlu
ZyBQSFkKaW5pdGlhbGl6YXRpb24uIFJpZ2h0IG5vdywgdGhlIGRyaXZlciB3aWxsIGVycm9yIG91
dCBpZiB0aGVyZSBpcyBubyBpbml0CnNlcXVlbmNlIGF2YWlsYWJsZS4KCi0gTWFuaQoKLS0gCuCu
ruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
