Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC62D10A62E8
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 02:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eaK1SYb6zmuzu7F1+GoWNbFMSkHQWTCMF8OWmMDyig=; b=UDL14hQKGiuk0K
	L6uggQSgcs1W2YJc50K8s4vi0fTEyKSqZX2kOXygbDcQevDgxYyvBZjEADqnPBqq/aB2PTlTfuzNv
	0feOPjzD6vl4GlK2pHckJPsLUCkgNathI7kwM9rzmyRO5DzZRjlcPoM9LoigibruOWPlxAJZIcMCg
	qg42mRmhflfn224587aOB+ZUjlZqQspBTSz7moXdjyVdO0eeARhnzTkQjeNio5jbQYoJECVQN9CNT
	unIxOh15k0xzwm+xXQwpC7CAISmq6XfUP/UmrdsDHNKqnQo63C8dp7RR0HlwBnMIYUC+r5nq3TdDL
	SSVSLNFrpbbOHjVWuTyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5wrl-00000006Y0e-1mOF;
	Fri, 27 Mar 2026 02:24:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5wri-00000006Xze-0xZw
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 02:24:03 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62R1Crkk790669
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 02:24:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ma8Dtb5mLRnOlanyBjOcRR4ysLdtbJQy/XPGvVqSw0s=; b=Pz5okk/dAmH6Xe1C
	t32tYr63p8GljDR73ywqS6Lbr94+QY0CQiBDiYkQdmOfAQzykOURiSoCOXMnFVOW
	rf6xmxkF5cRAwxh2cMpuTD+708LW2OXwk77no7XYJtptPG2g6XPG5TeBULvRc6U3
	TLVJn2Gqd+D+9vbG7E/I48sgVFEl/ddvoUJQcfCmqxlO/kdlGUtwxCrDccWF8D24
	II/Znf7nBHIocqkHMnhK9W2kTsI8+uzjNWA6sbJS3udJxHCAnEnsKaWR82cWryjx
	L2OfenT+zMMYgybkk6CifCl2ydNB63BerD3hHBAwT3z6EXyPl5RD8QMhg9vmmKvx
	HJKmSg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d53eqjv8a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 02:24:00 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b62da7602a0so1147761a12.2
        for <linux-phy@lists.infradead.org>; Thu, 26 Mar 2026 19:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774578240; x=1775183040; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ma8Dtb5mLRnOlanyBjOcRR4ysLdtbJQy/XPGvVqSw0s=;
        b=Mhd0FvKqCy789FTDOfsBUfJ5Kmxe7MgYPqZfHUDstVbn4eliPvGDZfPB5iw0868rB7
         HU5HeDV74RBJvaLoPyDxJ8my227Te5tSorD7ob7M9cfd/ylP400HGfJwdMLxmRsYwDZE
         GVFIvmzRRgQ2vsHxbZnbjV1q2rk5tvZIqeilGoPEVNw9xRpKc5T06Xu66jmpXl3TwPjy
         HTybiLNg/3B6Z62yPRWVLX6UMVtYNG4b97KTZ4m9h70BVxJpjUb+pyOShv5EMCoBf/uL
         RRAvWqrt6M16eDDXljot/7TpSyuXZzGK77M7/iE7QTmFCyOYSGc/XCYXUXDvFoLngq3l
         H7Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774578240; x=1775183040;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ma8Dtb5mLRnOlanyBjOcRR4ysLdtbJQy/XPGvVqSw0s=;
        b=ZeytGjWtHLYjrnPg/MEQsRHgZUhGRkwJ5r5WiFGgJPmYgSani0l3c19a51u9DAhkvv
         gB5xiDaNNAhWuDfQW6tjESDXB6M0QnQk7bz0D1Wr5wmrRKqc2UPyEIS+8kHr+aVt4NrZ
         TBjoUBkXA1U3wtBb7HahqgUtRYog4ppblnmUtjQHfXWPGrbgY7JhQqkapLxJew+O4K++
         mptkNTb/t3tdF3qw8wDW0NrELy4ti4ZfgP0yfju9TWbE2wZBKAa0RQPSBEcJw8m+SbhP
         LZdyhsbRxQltM5qPEnkqX8YsXDlMrkXQK+h2zbKAbfuikBoN46XR8Nq90otIKgCq2r+c
         JcNA==
X-Forwarded-Encrypted: i=1; AJvYcCVaF5YUwUGSi006UsAwaTxUF/NDQv2eIPJORREAAM+oLw9lUadCVZoNJaAiKwOnUT63DxMiVra7Nyw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzttF1M8QoBXJDrpRShwkMbkEM9uZdwrt8WrgabFgmsl1pQkn4i
	I40w+96hBo9bC0ph7FFbrYQS2d4eWlC93iFlhprAepqXFskw3JRsG7pl34QchBhSUYxw/cHu2C4
	IXWf7oa5x9RP0ATNkZ9b9yJbhrj4wKonew0Xwm2wOUTMKHOcFw0TQssG0DSkdhv2kh6/G
X-Gm-Gg: ATEYQzz5BC65d6DUY4BTTx7JflP7tLIKT1ar2jNfTU834jnP4HnD/DoJHPfyE/SCqBv
	UxHYqZgkTEmoAuEtO+5YPLMlEWlBodnhamEvFvKXJxiEJO/gFVOiGYEA4/jN9j5dlxrcbtiVIiG
	lnNaXkBIUBPvH7vhwKWeNmaFq+lne0lteH7o2hkl/3BLz/UxrKZQ9XzXymMqUNHhOlKnSo6i/Vv
	JopHV+wGCI8wg975VfTE/dQPrmSUAQVPMSAvfHcAk2n0EvEbDcanNF3ieB9wDA/8XvOWlxlEhQw
	4SALWFyemh9OMcFdg7oL4XWTdeKX+KEfv1PwcbqBCKZjt/pGwTe5MwSw4VFXfexq58KROQE01g3
	IVbXZs61N6yJueUtBG+W8z2yAC4HurtEoHHmH/WNpsZ6oaUBRFSNOb0wsRV8E4mtaWp0ZujxUTW
	VpOgzVCqBsFa5xMhHeNw==
X-Received: by 2002:a05:6a00:1803:b0:829:8c08:d1f4 with SMTP id d2e1a72fcca58-82c9605c95bmr685464b3a.39.1774578239894;
        Thu, 26 Mar 2026 19:23:59 -0700 (PDT)
X-Received: by 2002:a05:6a00:1803:b0:829:8c08:d1f4 with SMTP id d2e1a72fcca58-82c9605c95bmr685441b3a.39.1774578239395;
        Thu, 26 Mar 2026 19:23:59 -0700 (PDT)
Received: from [10.133.33.251] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82c7d3c2714sm3848975b3a.48.2026.03.26.19.23.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2026 19:23:59 -0700 (PDT)
Message-ID: <bc6abd24-d56a-4fc0-89e9-8986e8d8b3b7@oss.qualcomm.com>
Date: Fri, 27 Mar 2026 10:23:54 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-2-0c0fc7f5c01b@linaro.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <20260326-x1e-csi2-phy-v5-2-0c0fc7f5c01b@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI3MDAxNiBTYWx0ZWRfXy71szTPfYAOQ
 RLrt1cVO7ImYcRnH2NhUXT2RYM8MH4esLoaFy96+yl4AWOaA3LFEhrMWiGLSeBtbOU3kK3qxYik
 mKmXjBnEPZO9usYZzR3SXcV4kdDG9gxFrVuEx1wI7unkxSazfA7bIMLYazsPF38iSniVU+3pciC
 oLXb7VPMRT40ybbtVFRaTMnf0Dn3QH7CGZdMQj+HywiuhZwUfeGpLhApl6cg7PMJLZWeDuwGS/8
 asxEDhfQ34lmJvzwPo14UCqB+/oeIQuO2OpXv8hiMYzS9eul8Yg5kxWoWYDunfxCvEJ05+4zRuO
 XSpNNqgOxcBHwb5/T8FQJIdezpQL/bRN3KQqYruBGXNleNQ+clRahnIK4CM1/EWzulKAVbqnx3D
 cd4cWsX/D0uqn2nQBdpn/SzK6YtswxNVoxZQylp4w2gkORadg6S9tDj5J09mLyQsLl1bxmwqzaJ
 A0Ny0333vuooGVzi/lQ==
X-Proofpoint-GUID: G28win_vICGx5xi7_6yCSWbQK6s5dH19
X-Authority-Analysis: v=2.4 cv=S4bUAYsP c=1 sm=1 tr=0 ts=69c5ea40 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=irf8UKbSWqAIktAtPRAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: G28win_vICGx5xi7_6yCSWbQK6s5dH19
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-26_04,2026-03-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 bulkscore=0 phishscore=0
 spamscore=0 impostorscore=0 clxscore=1011 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603270016
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_192402_277193_8B4697B2 
X-CRM114-Status: GOOD (  11.40  )
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

T24gMy8yNi8yMDI2IDk6MDQgQU0sIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4gKyNpbmNsdWRl
IDxsaW51eC9kZWxheS5oPgo+ICsjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+Cj4gKyNpbmNs
dWRlIDxsaW51eC9pby5oPgo+ICsjaW5jbHVkZSA8bGludXgvdGltZTY0Lmg+Cj4gKwo+ICsjaW5j
bHVkZSAicGh5LXFjb20tbWlwaS1jc2kyLmgiCj4gKwo+ICsjZGVmaW5lIENTSVBIWV8zUEhfQ01O
X0NTSV9DT01NT05fQ1RSTG4ob2Zmc2V0LCBuKQkoKG9mZnNldCkgKyAweDQgKiAobikpCj4gKyNk
ZWZpbmUgQ1NJUEhZXzNQSF9DTU5fQ1NJX0NPTU1PTl9DVFJMMF9QSFlfU1dfUkVTRVQJQklUKDAp
Cj4gKyNkZWZpbmUgQ1NJUEhZXzNQSF9DTU5fQ1NJX0NPTU1PTl9DVFJMNV9DTEtfRU5BQkxFCUJJ
VCg3KQo+ICsjZGVmaW5lIENTSVBIWV8zUEhfQ01OX0NTSV9DT01NT05fQ1RSTDZfQ09NTU9OX1BX
UkROX0IJQklUKDApCj4gKyNkZWZpbmUgQ1NJUEhZXzNQSF9DTU5fQ1NJX0NPTU1PTl9DVFJMNl9T
SE9XX1JFVl9JRAlCSVQoMSkKPiArI2RlZmluZSBDU0lQSFlfM1BIX0NNTl9DU0lfQ09NTU9OX0NU
UkwxMF9JUlFfQ0xFQVJfQ01ECUJJVCgwKQo+ICsjZGVmaW5lIENTSVBIWV8zUEhfQ01OX0NTSV9D
T01NT05fU1RBVFVTbihvZmZzZXQsIG4pCSgob2Zmc2V0KSArIDB4YjAgKyAweDQgKiAobikpCj4K
SGkgQnJ5YW4sIG9uZSBtaW5vciBvYnNlcnZhdGlvbiBvbiB0aGUgZm9sbG93aW5nIG1hY3JvOgoK
CUNTSVBIWV8zUEhfQ01OX0NTSV9DT01NT05fU1RBVFVTbgoKVGhlIDB4YjAgb2Zmc2V0IGltcGxp
Y2l0bHkgYXNzdW1lcyBhIGZpeGVkIGRpc3RhbmNlIGJldHdlZW4gdGhlCmNvbW1vbl9jdHJsIGFu
ZCBjb21tb25fc3RhdHVzIHJlZ2lzdGVyIGJsb2Nrcy4gVGhpcyBob2xkcyBmb3IgdGhlIFBIWXMK
Y292ZXJlZCBieSB0aGlzIHNlcmllcywgYnV0IG9uIHNvbWUgb3RoZXIgcGxhdGZvcm1zIChlLmcu
IEthYW5hcGFsaSwKUGFrYWxhKSB0aGUgb2Zmc2V0IGRpZmZlcnMuCgpUaGF0IHNhaWQsIEkgdGhp
bmsga2VlcGluZyB0aGlzIGZpeGVkIHZhbHVlIGlzIHJlYXNvbmFibGUgZm9yIHRoZSBzY29wZQpv
ZiB0aGUgY3VycmVudCBQSFkgc2VyaWVzLCBhbmQgaXQgZG9lcyBoZWxwIGtlZXAgdGhlIG1hY3Jv
IHNldCBzaW1wbGUuCkl0IG1pZ2h0IGp1c3QgYmUgd29ydGggZG9jdW1lbnRpbmcgdGhpcyBhc3N1
bXB0aW9uIChlLmcuIHZpYSBhIGNvbW1lbnQKb3IgaW4gdGhlIGNvbW1pdCBtZXNzYWdlKS4KCkFs
dGVybmF0aXZlbHksIGlmIGZ1dHVyZSBQSFkgdmFyaWFudHMgbmVlZCB0byBzdXBwb3J0IGRpZmZl
cmVudCBsYXlvdXRzLAp0aGlzIGNvdWxkIGJlIG1hZGUgbW9yZSBleHRlbnNpYmxlIGJ5IG1vdmlu
ZyB0aGUgc3RhdHVzIGJhc2Ugb2Zmc2V0IGludG8KdGhlIHBlci1QSFkgZGF0YSAoc2ltaWxhciB0
byBvdGhlciByZWdpc3RlciBsYXlvdXQgcGFyYW1ldGVycykuIEJ1dCBJCmRvbuKAmXQgdGhpbmsg
dGhhdCBuZWVkcyB0byBibG9jayB0aGUgY3VycmVudCBzZXJpZXMuCgpSZWxhdGVkIHBhdGNoIGJl
Zm9yZToKPGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDExMi1jYW1zcy1leHRlbmRl
ZC1jc2lwaHktbWFjcm8tdjItMS1lZTczNDJmMmFhZjVAb3NzLnF1YWxjb21tLmNvbS8+CgpCZXN0
IFJlZ2FyZHMsCkhhbmd4aWFuZwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
