Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C103EDEBE6
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 18:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5iDHMXHgiPISdca5Cr8y2PdZikvgfgjdMEQ4gGozdM=; b=XaYoN9FqVBD7Nl
	oy8D79ESqhnD91PEKewgACmmhrTr6ft0f/OrjY/CvJWuPjZVClDKHtDettVBM6pEZcKzA2Inx2uvo
	+J0oDnl8xjA6zcC1qW9+S49ej11Wd+LWCWEfCeLn3V/nHz5as5+egAcxnp9MRTXEp4i7/EjJ/3icO
	3somsrwWoq/DbaZI8VDKUXmAdJm+Wk1l7emlfY06GOdqj/IfJde9LC+PUKH4g6NC/97MK7Bb2ocw7
	WSnNFtR4cqbcnRUcL1aekQxe7Pog8tUp+XAeYQxJEcIaRY185hx+tGbk2NUw8XyCLelSqBEoCnPJG
	W2PnMU/cnWo3HTzCDgVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxUxK-0000000Fjjp-32DI;
	Tue, 03 Mar 2026 18:58:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxUxG-0000000Fjj6-0DNL
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 18:58:53 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H0O1g3708661
	for <linux-phy@lists.infradead.org>; Tue, 3 Mar 2026 18:58:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mgXWrJl2w15tZkyYqMKFf/LP5i6WrIDM0ESMOQGxoto=; b=CgQ//7Nok6T3aEgt
	PGktN55Uoj9Ru54AkNy0t9aq0Zu4p3TcCRqKt6Kk4yUeP2xY/PuOuQhlrPxk6/jr
	3czisgKC3O6nkKPNUaoHZZmxVaE0MCNIH0BEPYaCWyeOD86odHSgmH8ItQhXDO5Y
	Wno40z9PRcJmCseObtnt1Cg+ncbPVLMQoJL+MDn+HLvVHlDtvIrnbKXZNgzFSNPD
	SwVPApm5KfHR1Qwoa2c7zFhIRIEDZ1k8OWTHX/zhKfdqgjK3zq8/W+tvRpxeqKV+
	5TH3DGzbnLYyX0Q1vna+CdoHPw8gIGzhR6s1JfJBJ32NNnLUAX8jiJ5PJ0gojVPW
	MYwc6g==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnsjm2ptf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 18:58:49 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2bde02c11b6so3273505eec.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 10:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772564329; x=1773169129; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mgXWrJl2w15tZkyYqMKFf/LP5i6WrIDM0ESMOQGxoto=;
        b=ZEiPlPvR6sFneDhz0u9W3kgaXBIjCSM7v0dYg5h7UMVglSJEndV1dh1DYAofBpk1rh
         Ph9Gwm+LjXLIVCB9Qz7+Q+X4wP0ZdJEXVa89PZWzdTwPGHFPVnK6Y6INKdQGSy+FHjwu
         eBxxbYJ2s0uBp/riSqmtW+Y+Gmwd1cqkyjRazhusDEAyHqlQ7m5sHUVbJQHPSJrakSTT
         qvpVYJY43TiNTO6H/nDi8yMVvwHQXKdj2QpTZevbqtwHnx7S7lq1pl0Bxtt054dI214e
         k6pZDTVKhDPiOa/mn/h8r8Ju50jLfqFVJtdxUqrBi/2h2JtRlcimdXYdQXeCb668XDm2
         jO5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772564329; x=1773169129;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mgXWrJl2w15tZkyYqMKFf/LP5i6WrIDM0ESMOQGxoto=;
        b=LTNLNw0EjwmpCUwzfKCtU9pr1RE3Kfe8Aa6oMFeeX9x5xABLrBGh6KHkJ0AR3JjoD1
         NV9dWu2zBWskQFQY1g0OsTJKcOZRJsJ2qYrBRRlzzDCeyORJns05WwZ1OH1GMAow6vAB
         dJhBrEskqp7rXnoxseVMBysh8GVQFgMupLed+qslsLd5xA/cGE+EdIEsUSvHFzakDcVX
         Be2CIj1fxd/eBL5eRAtruk/y3/bDAgql3TpuEHnZmfoxrrRHD1ZQzhzcogl8lglHeIHl
         o/MXvcodhknaw1RKxZD/YJOiX15KsGb8R95O1+pVtp8ulFCMbmH9SAXIqxs5L33DQ9j0
         t07Q==
X-Forwarded-Encrypted: i=1; AJvYcCUCOvIPVaM4XN4V/n6v8c07wGpfGaOkD372BqvnSD/DXeWBFR1wSywN9JKQJZNfz4HwtwH0/EcothQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxb/cGKTS/TP0DjFkiQmz8BFxKKTD9CueA7wsTaBf5dou9m++UZ
	zSzYAtF8PY+7M0RXnu/+ar76jF4whzMHd2OlMqPUP/d0CpU09/2gU91E4xzjB04zzZrqqPJ47rp
	xONvXDyhguntswcFCavpHrgR0CT7Ngs6ZVhH8vx06Dz3YBdMIMx9PchMGz07TtaK1HUxq
X-Gm-Gg: ATEYQzyzkwi4nuHTeAnp8BuHDI+v1EJnp6YgsNFZ8CYOXA3BLEnH4BxiyCf8C/9iAbh
	xDdXIWbKGfO+FSowUsqHEza4jfoYxS7Ant2dxwerYpAyi7pWQgcDRjsw3lZfD1JVADtccmkimKv
	dTvGMnTqXt1Aj8zD62oro2CxTixKDTq/s52oN0AvHrsTZwS3EsH5ihGLUc8Qutg0xY7EJMnOwPe
	d8Me26jjBrCZ2w44ftJNbqCfsM+UznBb3WgN4r/M9jysvW1VA5NtPK/PuTycnO1ESpoCp///rl2
	ZR9swc1JV8hJkiX5a7feegTpsWx2fwTQxVqaU2XZ+2HY+jTm0F7qP+HUtQqe3/6bRkWn23GzThM
	iAF+NP11R8gjFyqu+3YTCRitCwzhzRHf8znI6u4z/ulyLxA0tpO4chjfJcxt6bXbNbU7FBxFBLd
	zh
X-Received: by 2002:a05:7022:127:b0:119:e569:f875 with SMTP id a92af1059eb24-128b0da99a8mr1348138c88.18.1772564328542;
        Tue, 03 Mar 2026 10:58:48 -0800 (PST)
X-Received: by 2002:a05:7022:127:b0:119:e569:f875 with SMTP id a92af1059eb24-128b0da99a8mr1348120c88.18.1772564327940;
        Tue, 03 Mar 2026 10:58:47 -0800 (PST)
Received: from [10.62.37.55] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12789a5312dsm17177876c88.16.2026.03.03.10.58.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 10:58:47 -0800 (PST)
Message-ID: <2a1155bd-7dc5-4ed8-b1eb-ddfa483c75ca@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 10:58:45 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <4pFL6wOeTKUt-Zq4YbjqJdacMgUIPSYJD-4-5DcIMEZ1sM7JsNFYcSv1bd7ZRVOklTsmkEfxM2b6tTflmiECNQ==@protonmail.internalid>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <03b44922-72d5-465b-96e1-97a19655e97d@kernel.org>
 <4440a3a8-7281-4bea-bb84-7a9d19ef7ce9@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <4440a3a8-7281-4bea-bb84-7a9d19ef7ce9@oss.qualcomm.com>
X-Proofpoint-GUID: 7lc7alPWJPzi2r4Inm8mqkbVe8RYLQox
X-Authority-Analysis: v=2.4 cv=GIUF0+NK c=1 sm=1 tr=0 ts=69a72f69 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=SNpfbsHd_ZTzF1W5vAsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 7lc7alPWJPzi2r4Inm8mqkbVe8RYLQox
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE1MyBTYWx0ZWRfX3SjZstHfCwiQ
 v+bLtuH7sk0RAEfWU0trakWJ8Ti08XlNxf4gJciQbTvHRPfu19asLJG/JP2It+jVgdTmb1PICsn
 Rwx2qVJTXRtoLjfgVUhtyNTMkliLWRkKyzCjuLuAbIe21ypMA+gWhKOb7334DUa79oXq03dLx8j
 8QX4ElsBH6QNK5zTvsXIUo/yRGSTNlWr4Ib2wLPI4VSfDH5JI2QghFU27v1z9XAWRfdL+6QAVsX
 lXp/LGpMlIF5soWseI8Pr4XO8HMDlGZjCRNm9lXTUS54fDFMKaEz1MAjSY7LI8ssb81nDAcwyii
 U+2F33pU0o6NcIDrXEFsbCgKeTk61bGXBy1HQ/LGrEkiGh0rCdB/dVWConUZka8ca0NWqkDR2TZ
 G8Rmzzw3t9UVSQG/+TotfyBacmoFiR/88rzcaHeGV84bNHXZRhnM+OwjktTxOS4eSrX2x+9/9JJ
 TCbtn1ArEUHQVx9A1hg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_105850_880461_7FD7962C 
X-CRM114-Status: GOOD (  24.43  )
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

CgpPbiAzLzMvMjAyNiAxMDowOCBBTSwgVmlqYXkgS3VtYXIgVHVtYXRpIHdyb3RlOgo+IAo+IAo+
IE9uIDMvMy8yMDI2IDE6MjcgQU0sIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4+IE9uIDAzLzAz
LzIwMjYgMDE6NTEsIFZpamF5IEt1bWFyIFR1bWF0aSB3cm90ZToKPj4+IEhpIEJyeWFuLAo+Pj4K
Pj4+IE9uIDIvMjYvMjAyNiA0OjM0IEFNLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+Pj4+IEFk
ZCBhIGJhc2Ugc2NoZW1hIGluaXRpYWxseSBjb21wYXRpYmxlIHdpdGggeDFlODAxMDAgdG8gZGVz
Y3JpYmUgCj4+Pj4gTUlQSSBDU0kyCj4+Pj4gUEhZIGRldmljZXMuCj4+Pj4KPj4+PiBUaGUgaGFy
ZHdhcmUgY2FuIHN1cHBvcnQgYm90aCBDLVBIWSBhbmQgRC1QSFkgbW9kZXMuIFRoZSBDU0lQSFkg
ZGV2aWNlcwo+Pj4+IGhhdmUgdGhlaXIgb3duIHBpbm91dHMgb24gdGhlIFNvQyBhcyB3ZWxsIGFz
IHRoZWlyIG93biBpbmRpdmlkdWFsIAo+Pj4+IHZvbHRhZ2UKPj4+PiByYWlscy4KPj4+Pgo+Pj4+
IFRoZSBuZWVkIHRvIG1vZGVsIHZvbHRhZ2UgcmFpbHMgb24gYSBwZXItUEhZIGJhc2lzIGxlYWRz
IHVzIHRvIGRlZmluZQo+Pj4+IENTSVBIWSBkZXZpY2VzIGFzIGluZGl2aWR1YWwgbm9kZXMuCj4+
Pj4KPj4+PiBUd28gbmljZSBvdXRjb21lcyBpbiB0ZXJtcyBvZiBzY2hlbWEgYW5kIERUIGFyaXNl
IGZyb20gdGhpcyBjaGFuZ2UuCj4+Pj4KPj4+PiAxLiBUaGUgYWJpbGl0eSB0byBkZWZpbmUgb24g
YSBwZXItUEhZIGJhc2lzIHZvbHRhZ2UgcmFpbHMuCj4+Pj4gMi4gVGhlIGFiaWxpdHkgdG8gcmVx
dWlyZSB0aG9zZSB2b2x0YWdlLgo+Pj4+Cj4+Pj4gV2UgaGF2ZSBoYWQgYSBjb21wbGV0ZSBib2Rn
ZSB1cHN0cmVhbSBmb3IgdGhpcyB3aGVyZSBhIHNpbmdsZSBzZXQgb2YKPj4+PiB2b2x0YWdlIHJh
aWwgZm9yIGFsbCBDU0lQSFlzIGhhcyBiZWVuIGJ1cmllZCBpbnNpZGUgb2YgQ0FNU1MuCj4+Pj4K
Pj4+PiBNdWNoIGxpa2UgdGhlIEkyQyBidXMgd2hpY2ggaXMgZGVkaWNhdGVkIHRvIENhbWVyYSBz
ZW5zb3JzIC0gdGhlIENDSSAKPj4+PiBidXMgaW4KPj4+PiBDQU1TUyBwYXJsYW5jZSwgdGhlIENT
SVBIWSBkZXZpY2VzIHNob3VsZCBiZSBpbmRpdmlkdWFsbHkgbW9kZWxsZWQuCj4+Pj4KPj4+PiBT
aWduZWQtb2ZmLWJ5OiBCcnlhbiBPJ0Rvbm9naHVlIDxicnlhbi5vZG9ub2dodWVAbGluYXJvLm9y
Zz4KPj4+PiAtLS0KPj4+PiDCoMKgIC4uLi9iaW5kaW5ncy9waHkvcWNvbSx4MWU4MDEwMC1jc2ky
LXBoeS55YW1swqDCoMKgwqDCoMKgIHwgMTE0ICsrKysrKysrIAo+Pj4+ICsgKysrKysrKysrKysr
Cj4+Pj4gwqDCoCAxIGZpbGUgY2hhbmdlZCwgMTE0IGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20seDFl
ODAxMDAtIAo+Pj4+IGNzaTItcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3Fjb20seDFlODAxMDAtIAo+Pj4+IGNzaTItcGh5LnlhbWwKPj4+PiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+Pj4+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmM5MzdkMjZjY2JkYTkKPj4+
PiAtLS0gL2Rldi9udWxsCj4+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWwKPj4+PiBAQCAtMCwwICsxLDExNCBA
QAo+Pj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBCU0QtMi1DbGF1
c2UpCj4+Pj4gKyVZQU1MIDEuMgo+Pj4+ICstLS0KPj4+PiArJGlkOiBodHRwOi8vZGV2aWNldHJl
ZS5vcmcvc2NoZW1hcy9waHkvcWNvbSx4MWU4MDEwMC1jc2kyLXBoeS55YW1sIwo+Pj4+ICskc2No
ZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPj4+PiAr
Cj4+Pj4gK3RpdGxlOiBRdWFsY29tbSBDU0kyIFBIWQo+Pj4+ICsKPj4+PiArbWFpbnRhaW5lcnM6
Cj4+Pj4gK8KgIC0gQnJ5YW4gTydEb25vZ2h1ZSA8Ym9kQGtlcm5lbC5vcmc+Cj4+Pj4gKwo+Pj4+
ICtkZXNjcmlwdGlvbjoKPj4+PiArwqAgUXVhbGNvbW0gTUlQSSBDU0kyIEMtUEhZL0QtUEhZIGNv
bWJpbmF0aW9uIFBIWS4gQ29ubmVjdHMgTUlQSSAKPj4+PiBDU0kyIHNlbnNvcnMKPj4+PiArwqAg
dG8gUXVhbGNvbW0ncyBDYW1lcmEgQ1NJIERlY29kZXIuIFRoZSBQSFkgc3VwcG9ydHMgYm90aCBD
LVBIWSBhbmQgCj4+Pj4gRC1QSFkKPj4+PiArwqAgbW9kZXMuCj4+Pj4gKwo+Pj4+ICtwcm9wZXJ0
aWVzOgo+Pj4+ICvCoCBjb21wYXRpYmxlOgo+Pj4+ICvCoMKgwqAgY29uc3Q6IHFjb20seDFlODAx
MDAtY3NpMi1waHkKPj4+PiArCj4+Pj4gK8KgIHJlZzoKPj4+PiArwqDCoMKgIG1heEl0ZW1zOiAx
Cj4+Pj4gKwo+Pj4+ICvCoCAiI3BoeS1jZWxscyI6Cj4+Pj4gK8KgwqDCoCBjb25zdDogMQo+Pj4+
ICsKPj4+PiArwqAgY2xvY2tzOgo+Pj4+ICvCoMKgwqAgbWF4SXRlbXM6IDQKPj4+PiArCj4+Pj4g
K8KgIGNsb2NrLW5hbWVzOgo+Pj4+ICvCoMKgwqAgaXRlbXM6Cj4+Pj4gK8KgwqDCoMKgwqAgLSBj
b25zdDogY3NpcGh5Cj4+Pj4gK8KgwqDCoMKgwqAgLSBjb25zdDogY3NpcGh5X3RpbWVyCj4+Pj4g
K8KgwqDCoMKgwqAgLSBjb25zdDogY2Ftbm9jX2F4aQo+Pj4+ICvCoMKgwqDCoMKgIC0gY29uc3Q6
IGNwYXNfYWhiCj4+Pj4gKwo+Pj4+ICvCoCBpbnRlcnJ1cHRzOgo+Pj4+ICvCoMKgwqAgbWF4SXRl
bXM6IDEKPj4+PiArCj4+Pj4gK8KgIG9wZXJhdGluZy1wb2ludHMtdjI6Cj4+Pj4gK8KgwqDCoCBt
YXhJdGVtczogMQo+Pj4+ICsKPj4+PiArwqAgcG93ZXItZG9tYWluczoKPj4+PiArwqDCoMKgIG1h
eEl0ZW1zOiAxCj4+Pj4gKwo+Pj4+ICvCoCB2ZGRhLTBwOC1zdXBwbHk6Cj4+Pj4gK8KgwqDCoCBk
ZXNjcmlwdGlvbjogUGhhbmRsZSB0byBhIDAuOFYgcmVndWxhdG9yIHN1cHBseSB0byBhIFBIWS4K
Pj4+PiArCj4+Pj4gK8KgIHZkZGEtMXAyLXN1cHBseToKPj4+PiArwqDCoMKgIGRlc2NyaXB0aW9u
OiBQaGFuZGxlIHRvIDEuMlYgcmVndWxhdG9yIHN1cHBseSB0byBhIFBIWS4KPj4+PiArCj4+Pj4g
K3JlcXVpcmVkOgo+Pj4+ICvCoCAtIGNvbXBhdGlibGUKPj4+PiArwqAgLSByZWcKPj4+PiArwqAg
LSAiI3BoeS1jZWxscyIKPj4+PiArwqAgLSBjbG9ja3MKPj4+PiArwqAgLSBjbG9jay1uYW1lcwo+
Pj4+ICvCoCAtIGludGVycnVwdHMKPj4+PiArwqAgLSBvcGVyYXRpbmctcG9pbnRzLXYyCj4+Pj4g
K8KgIC0gcG93ZXItZG9tYWlucwo+Pj4+ICvCoCAtIHZkZGEtMHA4LXN1cHBseQo+Pj4+ICvCoCAt
IHZkZGEtMXAyLXN1cHBseQo+Pj4+ICsKPj4+PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNl
Cj4+Pj4gKwo+Pj4+ICtleGFtcGxlczoKPj4+PiArwqAgLSB8Cj4+Pj4gK8KgwqDCoCAjaW5jbHVk
ZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgo+Pj4+ICvCoMKg
wqAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3Fjb20seDFlODAxMDAtY2FtY2MuaD4KPj4+
PiArwqDCoMKgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9xY29tLHgxZTgwMTAwLWdjYy5o
Pgo+Pj4+ICvCoMKgwqAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BoeS9waHkuaD4KPj4+PiArCj4+
Pj4gK8KgwqDCoCBjc2lwaHlAYWNlNDAwMCB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGNvbXBhdGli
bGUgPSAicWNvbSx4MWU4MDEwMC1jc2kyLXBoeSI7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJlZyA9
IDwweDBhY2U0MDAwIDB4MjAwMD47Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgICNwaHktY2VsbHMgPSA8
MT47Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JmNhbWNjIENBTV9DQ19D
U0lQSFkwX0NMSz4sCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmY2Ft
Y2MgQ0FNX0NDX0NTSTBQSFlUSU1FUl9DTEs+LAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCA8JmNhbWNjIENBTV9DQ19DQU1OT0NfQVhJX1JUX0NMSz4sCj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmY2FtY2MgQ0FNX0NDX0NQQVNfQUhCX0NMSz47
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGNsb2NrLW5hbWVzID0gImNzaXBoeSIsCj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY3NpcGh5X3RpbWVyIiwKPj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJjYW1ub2NfYXhp
IiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJjcGFz
X2FoYiI7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBvcGVyYXRpbmctcG9pbnRzLXYyID0g
PCZjc2lwaHlfb3BwX3RhYmxlPjsKPj4+PiArCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGludGVycnVw
dHMgPSA8R0lDX1NQSSA0NzcgSVJRX1RZUEVfRURHRV9SSVNJTkc+Owo+Pj4+ICsKPj4+PiArwqDC
oMKgwqDCoMKgwqAgcG93ZXItZG9tYWlucyA9IDwmY2FtY2MgQ0FNX0NDX1RJVEFOX1RPUF9HRFND
PjsKPj4+IEFzIHdlIGFyZSBjbGVhbmluZyB1cCB0aGUgUEhZIGRldmljZSBub2Rlcywgd2Ugc2hv
dWxkIGNvbnNpZGVyIGZpeGluZwo+Pj4gdGhlIHBvd2VyIGRvbWFpbnMgYXMgd2VsbC4gQWx0aG91
Z2ggVE9QIEdEU0MgaXMgZGVmaW5lZCBhcyBhIHBvd2VyCj4+PiBkb21haW4sIGl0IGlzIG5vdCB0
aGUgcG93ZXIgc291cmNlIGZvciB0aGUgUEhZIGRldmljZXMuIFJhdGhlciwgaXQgaXMKPj4+IHRo
ZSBNTUNYLCBNWEMgYW5kIG9wdGlvbmFsbHkgTVhBIGJhc2VkIG9uIHRoZSBhcmNoaXRlY3R1cmUg
KFJlZmVyIHRvCj4+PiAnVm9sdGFnZSByYWlsJyBjb2x1bW4gZm9yIFBIWSBjbG9ja3MgaW4gSVBD
QVQpLiAKPj4KPj4gRmVlbCBmcmVlIHRvIHNlbmQgbWUgYSBxY29tIGxhcHRvcCBhbmQgSSB3aWxs
IDopCj4gOikKPj4KPj4gwqBGcm9tIG1lbW9yeSB0aG91Z2ggSSBfdGhvdWdodF8gb25seSB0aGUg
VE9QIHdhcyByZXF1aXJlZCBmb3IgdGhlIFBIWS4gCj4+IEknZCBiZSBncmF0ZWZ1bCBpZiB5b3Ug
Y291bGQgY29uZmlybSB5b3Vyc2VsZiBpbiBpcGNhdC4KPj4KPj4gLSBUSVRBTl9UT1BfR0RTQwo+
PiAtIE1YQwo+PiAtIE1NQ1gKPj4gLSBNWEEgLSBmaXJzdCB0aW1lIEkndmUgaGVhcmQgb2YgdGhp
cyByYWlsLCBmcm9tIG1lbW9yeSBJIGRvbid0IHJlbWVtYmVyCj4+IMKgwqDCoMKgwqDCoMKgwqAg
aGF2aW5nIHNlZW4gdGhpcyBpbiBpcGNhdCB3aGVuIEkgY291bGQgZG8gc28uCj4gTUNYIGFuZCBN
TUNYIGFyZSBjb21taW5seSByZXF1aXJlZCBwb3dlciBkb21haW5zIGFjcm9zcyB0aGUgUEhZcyBi
dXQgYSAKPiBzdWJzZXQgb2YgUEhZcyBoYXZlIHRoZSBkZXBlbmRlbmN5IG9uIE1YQS4KQWN0dWFs
bHksIGl0J3MgYSBiaXQgbW9yZSBjb21wbGljYXRlZCBvbiB0aGlzIHRhcmdldCBhcyAKY2FtX2Nj
X2NwaHlfcnhfY2xrX3NyYyBhbHNvIGRlcGVuZHMgb24gTVhBLCB3aGljaCBtZWFucyBhbGwgdGhl
IENCQ3MgCmNvbm5lY3RlZCB0aGlzIFJDRyBkbyBhcyB3ZWxsLgo+Pgo+PiBUaGVyZSBpcyBubwo+
Pj4gcGFyZW50LWNoaWxkIHJlbGF0aW9uc2hpcCBiZXR3ZWVuIHRoZSBUT1AgR0RTQyBhbmQgdGhl
c2UgaW4gdGhlIGNsb2NrCj4+PiBkcml2ZXIgYW5kIGl0IHdhcyBqdXN0IHdvcmtpbmcgYXMgdGhl
IHJlcXVpcmVkIHBvd2VyIHJhaWxzIGFyZSBnZXR0aW5nCj4+PiBlbmFibGVkIGJ5L2ZvciBvdGhl
ciBNTSBkZXZpY2VzLgo+Pgo+PiBXZWxsIG9ubHkgdGhlIEdEU0MgaXMgc3VwcGxpZWQgYnkgdGhl
IGNsb2NrIGNvbnRyb2xsZXIuCj4gUmlnaHQsIEdEU0MgaXMgY29udHJvbGxlZCBieSB0aGUgQ0FN
Q0MgdG8gc3VzcGVuZCB0aGUgc3Vic3lzdGVtcy4gQnV0IAo+IHRoZSBhY3R1YWwgcG93ZXIgc3Vw
cGx5IGFuZCB0aGUgdm9sdGFnZSByYWlscyBhcmUgdW5kZXIgdGhlIGNvbnRyb2wgb2YgCj4gdGhl
IFJQTUguIFNvIHRoZSBjbGllbnRzIG5lZWQgdG8gZW5hYmxlIGFuZCB2b3RlIGZvciB0aGUgcmVx
dWlyZWQgcGVyZiAKPiBjb3JuZXIgYXMgdGhlIGNvcmUgY2xvY2tzIHNjYWxlIHVwL2Rvd24gdG8g
YmUgaW5kZXBlbmRlbnQgb2YgdGhlIG90aGVyIAo+IHN1YnN5c3RlbXMgc2hhcmluZyB0aG9zZSB2
b2x0YWdlIHJhaWxzLgo+Pgo+Pj4+ICsKPj4+PiArwqDCoMKgwqDCoMKgwqAgdmRkYS0wcDgtc3Vw
cGx5ID0gPCZ2cmVnX2wyY18wcDg+Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoCB2ZGRhLTFwMi1zdXBw
bHkgPSA8JnZyZWdfbDFjXzFwMj47Cj4+Pj4gK8KgwqDCoCB9Owo+Pj4+ICsKPj4+PiArwqDCoMKg
IGNzaXBoeV9vcHBfdGFibGU6IG9wcC10YWJsZS1jc2lwaHkgewo+Pj4+ICvCoMKgwqDCoMKgwqDC
oCBjb21wYXRpYmxlID0gIm9wZXJhdGluZy1wb2ludHMtdjIiOwo+Pj4+ICsKPj4+PiArwqDCoMKg
wqDCoMKgwqAgb3BwLTMwMDAwMDAwMCB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3Bw
LWh6ID0gL2JpdHMvIDY0IDwzMDAwMDAwMDA+Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJlcXVpcmVkLW9wcHMgPSA8JnJwbWhwZF9vcHBfbG93X3N2c19kMT47Cj4+Pj4gK8KgwqDCoMKg
wqDCoMKgIH07Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBvcHAtNDAwMDAwMDAwIHsKPj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvcHAtaHogPSAvYml0cy8gNjQgPDQwMDAwMDAwMD47
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBkX29w
cF9sb3dfc3ZzPjsKPj4+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4+PiArCj4+Pj4gK8KgwqDCoMKg
wqDCoMKgIG9wcC00ODAwMDAwMDAgewo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9wcC1o
eiA9IC9iaXRzLyA2NCA8NDgwMDAwMDAwPjsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZXF1aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX2xvd19zdnM+Owo+Pj4+ICvCoMKgwqDCoMKgwqDC
oCB9Owo+Pj4+ICvCoMKgwqAgfTsKPj4+Pgo+Pj4gVGhhbmtzLAo+Pj4gVmlqYXkuCj4+Cj4gVGhh
bmtzLAo+IFZpamF5LgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
