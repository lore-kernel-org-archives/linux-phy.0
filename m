Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAF88C79F9F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 06:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gu6POSeBE333/VMx6C2Wfpc3Lxo/Pze+hirtl2c1+KE=; b=qh3UG/n6pFRI3h
	SXnhDMbci28f9Oz0g7yR4EPYCvsm7AtVJ+0vGoldFsLZN+vmgpDaI0e6m7V/QeYf2DnJAs2BSLV/R
	iN8V/PQZ/8BZ1UiVlfX1Ixgo/r00Gt6oUN8kFkPTCokUcHqlfm5doBBLYCCk2bn+xxTBN4qK2KpBf
	PgV8gsCtXKsXaX4EVTXrNJa4gjv4LSoUGjWHiEvGx/PZxdDfRnr3k6LB6zASPwusvHGIGMt+VSXxs
	S3vN1nD0qMlU9Pn2kRSETJzDppr8fXHQr6WUt5wHil2eqTtMdilRgZXvQQFE+rqIqgeKoP9D+zzQ5
	0xHdpMiREyXUmYc0PG4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4YVu-0000000DYpz-2Wjz;
	Thu, 10 Sep 2026 06:44:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4YVs-0000000DYpg-21aP
	for linux-phy@bombadil.infradead.org;
	Thu, 10 Sep 2026 06:44:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=qwJFrJ+jnQZB4v4JTITVBb6cPnXSqYDA0xswKuE2WOo=; b=GaAygFrsUkhXCX+dbCmiE2SqKj
	A1GDiknj5YZ0HmIe5qIRiV8obQbWPfwwTqtYLbV3JAc3prY1TaJxR/juO0/4g5YOtLSEzn5ydB5VP
	NqP+ZN51B+USHqUBoOy55HhoOxr1PNbtSdNb3V6XTFsb6LNJ0m99O38KgwhnTHK4NVmYTFqP9s26E
	aWosaE+7u7yjh2bRWM9ynB3cTyj6NnUFZsmBmExXf3aUncopo4vCjE/Gvq4J7eb83Udhv3v+4ovyz
	n8BnkslteitPOFBEjmDC9aKb73RAaEwWuP20GdIm3yL9+ckibcOXWZRxk0799/463T1eyY61vSELa
	0AlEQlbA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x4YVp-000000025sc-0rVV
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 06:43:59 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68A5H1q74142926
	for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 06:43:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qwJFrJ+jnQZB4v4JTITVBb6cPnXSqYDA0xswKuE2WOo=; b=ACGFonFlxqI/UPdG
	2wZz7bmj3uu0wlLTO2g6YQ6moQFZNDur89BThmT1Ja9PwtSPVi1079I8Lk2l29eo
	Nc0iDg5IyChwcwSZiqbCB3pvn6I9ZG2hQYdoh6pfsKZ3O9GQw/lHMmeiPobmnT0r
	9oREWQSMIEk5AWGsVKNk7jmdq4yTSOTFEOXTDVIj8l210931AHbIOyFrtDtucKM/
	++3p6xUUpgOK2xRZ0ET3ztNsewao3ZWdsSF+uYaarbvbp+ZpkLKj8NbXGjn7wiKt
	eBDS7clCFCIlJP4T7XJDCzGYfNVusUcbTI0eW4shwVLsxmPCEAepbhGMtYh2Eg7+
	U/4gRw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gkcyd2e05-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 06:43:54 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c89704da8c7so8844126a12.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 23:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789022633; x=1789627433; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=qwJFrJ+jnQZB4v4JTITVBb6cPnXSqYDA0xswKuE2WOo=;
        b=TTlr14hxh0NJWICfOG2TN/dqwcd+a5ymdlRWLTxRqgfXThRIti/yC+DIOBbAquHLmJ
         xcPaxGOsu2GetJy1J+cfle4WTTtf1umx1GJ8ULdvkkKDfBkIILFoEvNniSPEHYNYBkiO
         AJV9EmU2iue+rDau8Ph19jXeqQeugNw8ni3YO2HEtffcHwDy8g/p6T/doPp6wDZ+LZRX
         AOpTxUJy1tMZ9vOdhYAQQh0WrFzCVwHBKZHSEWNQFR5vpPaFcZZaIDvoCr9Dz2HIuaX0
         sntScb7IvSuPlpxJYPbZtQq59sga24CFwZc6TBlHyF9gaVzAjvYvQZgpbGfGr08JbDnD
         j3oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789022633; x=1789627433;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=qwJFrJ+jnQZB4v4JTITVBb6cPnXSqYDA0xswKuE2WOo=;
        b=PUh+Wjw3fSe9ap/2eUXW4YFJtcOgzQzyjuAeehbi0x6qsSMCFngkAuwbrDvoKzhM3S
         0mbDL9mXV6cvEkjGQ9NnM8subG+bT8NsITm+WObnls9yAQR19lITk1mpst6JR+cm2LT/
         0FNyOIz0ALLkzx1EiCiY5oS11yivbk+07wVij+9bbtLeSr6KBKRbFO9vYYJ6455sGFku
         4dJBQ1UqEXRdIOI30NiroW4q5ydQjmiEGk0/0cXjm/huI+EF4tHdTmkRZp2dLEbm1gc+
         wpUnjWeHYj4qq7+InMdck+dPWYebXgeR0c3av++8CMvlDGwlyU1GhW4mZ3gUBQNroYEc
         LVxg==
X-Forwarded-Encrypted: i=1; AKwUvByWclolhYUTNY4gJDsFH9byc/gs8JDN078F04hmjpP1e7H4yn7Tf6fFj08Y/YPgZ4Ot+X3wi/uSJNE=@lists.infradead.org
X-Gm-Message-State: AFuF++nJPDc2WF11OfvFrc+AMwV4DqO86HLV/1IMF7wHRrMYrRNMsOrL
	jZ5+1f/xuxtIIpMDctJxP3iXdCxFZY73rGoalk6/56lLDw01rEX65N44pLz3JzDTEBJiElQSzEz
	WXrminShDtn2nxgR5p6TwsaJoSY1gfQ+a1Y7iFPmrROWONwL8oasZ2JAhMKEfe9xJ8H+K
X-Gm-Gg: AYBFou1mtEAgRFeDDkA2D8m2mN1UUTuFeFRDniTvAgphWUv2z/p6BZech22BTuSU4rP
	sOakojvu0oK04UNXrkgbNchoMG5j1ozFjnkzwsqnxAbiXf5sSdHbIF6A0HzpgaXxxWNUcPccZfP
	K+qMXQFNAnAQAPMxhe2x74ngUliyUe6m+Bw9Xyday67IlPNj3pIr89V9y6LB2iBJpYz/aUBN+0e
	9buKz4ihC/6VWk6tYaxQk/R8BDBTJ+Ds1y53h7rTn+bCexcQO2dcIw6Gzp/af6RHEfu8tE66Y+O
	mTUoL6K8/a4J2u+ni1iObDVdA2V2UTHxpeOczzreVID+ZM7lpTnVf/NU5nazmr2J54dH3RY6hW2
	1D/1as8znqfDoBQzrMS67PDJtxSSqVs7DWk8Y34yzANg=
X-Received: by 2002:a05:6a20:72a0:b0:3d3:aec2:4dcc with SMTP id adf61e73a8af0-3dacbf28ae3mr8197984637.24.1789022633277;
        Wed, 09 Sep 2026 23:43:53 -0700 (PDT)
X-Received: by 2002:a05:6a20:72a0:b0:3d3:aec2:4dcc with SMTP id adf61e73a8af0-3dacbf28ae3mr8197918637.24.1789022632708;
        Wed, 09 Sep 2026 23:43:52 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339ac24d7esm77752519eec.15.2026.09.09.23.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 23:43:52 -0700 (PDT)
Date: Thu, 10 Sep 2026 14:43:45 +0800
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: qcom: add Nord QMP PCIe PHY
 binding
Message-ID: <aqJRob8DsjOeEiPJ@QCOM-aGQu4IUr3Y>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-1-b0a82721c547@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260909-nord-v3-1-b0a82721c547@oss.qualcomm.com>
X-Proofpoint-GUID: KQXb2fwBjBM8T5nh8TnvwVRMkzMXzobR
X-Authority-Analysis: v=2.4 cv=ef+o7LEH c=1 sm=1 tr=0 ts=6aa251aa cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=Tb11Ti1d2fZyuSkRe-0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: KQXb2fwBjBM8T5nh8TnvwVRMkzMXzobR
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEwMDA3MCBTYWx0ZWRfXzYP9Z/YTcEtK
 IadzLZc0sRCRBzTK39JXqciGUUeGbAwUQnuEKPQbXMsVg1jJ22zDFJ2n5q5xdoXNeVdv3UXhC6W
 YlViyVu42UrxZ03SS2XrDdd/vxDZ5/o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEwMDA3MCBTYWx0ZWRfX+ugZtpbVq1Vk
 A1BUBRqx9WFX+ZSro154lthG2kSxm0i30vefn9iYSGzyHeTVT+EpbK2CA7NPRW6SFAnwX6l2R8q
 8aK2hgpqXZ7JJ4aMQgP/lkE2sgkaU3TReM6NU0xXV7dmD5OGCoTMMASywYE1o7eycMBqi+0JqwL
 NKALkq83KlVEG2V69bhR/z3JEttMasaYQhNNVdEFatlpG9HwoKnZOzxdAxs3FyAki2OEqgoa3DN
 qPENB6nUnAVzNGe00zEMQGNILheLLrMIrzPpynbHglsmQZWN+6YbBQOXXbSntiHqETWg63O6N7Z
 1wOCLXpiQGDs/FPlsU1+d9qlebjVRehfIe9ChXzYcyZo0qJd51CBUcvfkEY3nlDWdWTFn8eZZ6M
 r2HjK4skO6R/kGxlfUvIGemUAHUP1IabDphbH92FH/PZUxXM4meldHK0ITyO/i+dQiSHIA6lJym
 A+QL3Lkf8IgreEeGyBQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-10_02,2026-09-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609100070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_074357_659723_0578B48D 
X-CRM114-Status: GOOD (  21.68  )
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

T24gV2VkLCBTZXAgMDksIDIwMjYgYXQgMDU6MTg6MTZQTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPiBEb2N1bWVudCB0aGUgUENJZSBQSFkgZm91bmQgb24gdGhlIFF1
YWxjb21tIE5vcmQgcGxhdGZvcm0uCj4gCj4gTm9yZCBoYXMgYSBHZW41LWNhcGFibGUgUU1QIFBD
SWUgUEhZIHRoYXQgY2FuIG9wZXJhdGUgaW4gbXVsdGlwbGUKPiBsYW5lIGNvbmZpZ3VyYXRpb25z
IHVzaW5nIGZvdXIgUEhZIHNlZ21lbnRzIChBL0IvQy9EKS4gVGhlIGFjdGl2ZQo+IHRvcG9sb2d5
IGlzIHNlbGVjdGVkIGJ5IGZpcm13YXJlIHRocm91Z2ggYSBUQ1NSIGNvbmZpZ3VyYXRpb24KPiBy
ZWdpc3RlciBhbmQgbWF5IGJlIGNvbmZpZ3VyZWQgYXMgeDE2LCB4OCt4OCwgeDgreDQreDQsIG9y
Cj4geDgreDQreDIreDIuCj4gCj4gVGhlIGJpbmRpbmcgZGVzY3JpYmVzIHRoZSByZWdpc3RlciBy
ZWdpb25zLCBjbG9ja3MsIHJlc2V0cywgcG93ZXIKPiBkb21haW5zLCByZWd1bGF0b3JzLCBQSFkg
cHJvdmlkZXIgaW50ZXJmYWNlLCBjbG9jayBwcm92aWRlciBpbnRlcmZhY2UsCj4gYW5kIHRoZSBx
Y29tLGxpbmstbW9kZSBwcm9wZXJ0eSB1c2VkIGJ5IHRoZSBkcml2ZXIgdG8gZGlzY292ZXIgdGhl
Cj4gYWN0aXZlIGxhbmUgY29uZmlndXJhdGlvbiBwcm9ncmFtbWVkIGJ5IGZpcm13YXJlLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRy
dUBvc3MucXVhbGNvbW0uY29tPgo+IC0tLQo+ICAuLi4vcGh5L3Fjb20sbm9yZC1xbXAtZ2VuNXgx
Ni1wY2llLXBoeS55YW1sICAgICAgICB8IDI3MiArKysrKysrKysrKysrKysrKysrKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDI3MiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxub3JkLXFtcC1nZW41eDE2LXBjaWUt
cGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sbm9y
ZC1xbXAtZ2VuNXgxNi1wY2llLXBoeS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjYyNGFkN2U3ZDEzZQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sbm9yZC1xbXAtZ2VuNXgxNi1w
Y2llLXBoeS55YW1sCj4gQEAgLTAsMCArMSwyNzIgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKQo+ICslWUFNTCAxLjIKPiArLS0tCj4gKyRp
ZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L3Fjb20sbm9yZC1xbXAtZ2VuNXgx
Ni1wY2llLXBoeS55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1z
Y2hlbWFzL2NvcmUueWFtbCMKPiArCj4gK3RpdGxlOiBRdWFsY29tbSBOb3JkIFFNUCBRdWFkZnVy
Y2F0ZWQgUENJZSBtdWx0aXBsZSBsaW5rLW1vZGUgUEhZCj4gKwo+ICttYWludGFpbmVyczoKPiAr
ICAtIEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNv
bW0uY29tPgo+ICsKPiArZGVzY3JpcHRpb246IHwKCkNhbiB3ZSBkcm9wICJ8IiBsaWtlIGJlbG93
PwoKQEAgLTksNyArOSw3IEBAIHRpdGxlOiBRdWFsY29tbSBOb3JkIFFNUCBRdWFkZnVyY2F0ZWQg
UENJZSBtdWx0aXBsZSBsaW5rLW1vZGUgUEhZCiBtYWludGFpbmVyczoKICAgLSBLcmlzaG5hIENo
YWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21tLmNvbT4KCi1kZXNj
cmlwdGlvbjogfAorZGVzY3JpcHRpb246CiAgIFRoZSBRdWFsY29tbSBOb3JkIFBDSWUgUEhZIGlz
IGEgR2VuNS1jYXBhYmxlIFFNUCBQQ0llIFBIWSBjb21wb3NlZAogICBvZiBmb3VyIFBIWSBwb3J0
cyAoQS9CL0MvRCkuIFRoZSBwb3J0cyBjYW4gYmUgY29tYmluZWQgdG8gc3VwcG9ydAogICBtdWx0
aXBsZSBsYW5lIHRvcG9sb2dpZXMsIGluY2x1ZGluZyB4MTYsIHg4K3g4LCB4OCt4NCt4NCBhbmQK
QEAgLTEwMSw3ICsxMDEsNyBAQCBwcm9wZXJ0aWVzOgogICB2ZGRhLXBsbC1kLXN1cHBseTogdHJ1
ZQoKICAgcWNvbSxsaW5rLW1vZGU6Ci0gICAgZGVzY3JpcHRpb246IHwKKyAgICBkZXNjcmlwdGlv
bjoKICAgICAgIFJlZmVyZW5jZSB0byB0aGUgVENTUiBzeXNjb24gYW5kIHRoZSBvZmZzZXQgb2Yg
dGhlCiAgICAgICBUQ1NSX1BDSUVfTElOS19DT05GSUdfTU9ERSByZWdpc3Rlci4KICAgICAgICAg
MCAoUU1QX1BDSUVfTk9SRF9NT0RFX1gxNikgICAgICAgIOKAlCBhbGwgcG9ydHMgZ2FuZ2VkIGFz
IHgxNgpAQCAtMTI5LDggKzEyOSw4IEBAIHByb3BlcnRpZXM6CgogICAiI3BoeS1jZWxscyI6CiAg
ICAgY29uc3Q6IDEKLSAgICBkZXNjcmlwdGlvbjogfAotICAgICAgU2VsZWN0cyB0aGUgUEhZIGlu
c3RhbmNlIGJ5IGluZGV4OgorICAgIGRlc2NyaXB0aW9uOgorICAgICAgU2VsZWN0cyB0aGUgUEhZ
IGluc3RhbmNlIGJ5IGluZGV4LgogICAgICAgICAwIOKAlCBwb3J0IEEgKHVwIHRvIEdlbjUgeDg7
IGFuY2hvciBpbiB4MTYgbW9kZSkKICAgICAgICAgMSDigJQgcG9ydCBCICh1cCB0byBHZW41IHg0
KQogICAgICAgICAyIOKAlCBwb3J0IEMgKHVwIHRvIEdlbjUgeDIpCgpTaGF3bgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
