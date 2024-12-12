Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88497E7717F
	for <linux-phy@archiver.kernel.org>; Thu, 12 Dec 2024 17:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbak/bBBh0WAlVBb1vRFXz15g5jbX0+riukHdFBhzs4=; b=Oxl0IPLq66RoGp
	f6uuI+vAARjNmnHUDOse9wju+ViCkmcCqZamAEFJcQZ+g3Jl6S+zpTeEBzB3IGzpMtGGHZJhGAKbT
	/il0NrFv4RyY0t9p2rfhOXeEaxe9U26hHao2lh3/y8LU9U9X//UYYFdvsVANG1JpypAt/SWg6n8Lg
	LqMz0aYEHgN/rHfEL2P2L8i3tSdDv+z5HALZyPF0VL3ObXdqKhn7Kw7saCKIyX6wJHh8gwOTGqyo4
	Wn/GFP4ElXLxim+CHZxyWPFPEP94Ezf3SHikK86Lgl9mQV8jjcTO7+YVLbDhTzM7sfwm651IDuCXk
	MjYQlq1fkpEq7rWk5dUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLmhj-000000017fx-0cor;
	Thu, 12 Dec 2024 17:10:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLlmh-00000000uLz-3Clk
	for linux-phy@lists.infradead.org;
	Thu, 12 Dec 2024 16:11:29 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCD6GgZ001463
	for <linux-phy@lists.infradead.org>; Thu, 12 Dec 2024 16:11:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BiOSCtICkfmA4vxytEAY623sRmhmgOgepKEKhIeGLBE=; b=HuYk0AgORhC7WmiX
	RUNFGvuNWjFQ1qX65CY8SVT9ojxODbmVnAxqQKRainhNLGy5dRD0XhCxAAXFD4rH
	8yWLoVYDNqMycld45sFwLGVGnDiT3UzzkK6ag8tm+NA1ir8CoA/6n/tnCHh0u3iF
	xUTM1NP2c5VyMJLuxy20CYpGx9z02PlICXgdA9m2rosibB7AVW7gtJlRymsDvJ7l
	3J+NE5geetgjFs0q2hEbJyVHsRCOC/IcGjEGvCZxPbUP1hQg0T5jMUjh6aAiV0s1
	u2jVZt2OPw5AS2VeTqzwbvFKPXi8wGxANXcCamDODhMurkt499oljr6KyPJ5EfV0
	26Ib1w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fqes21g8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 12 Dec 2024 16:11:25 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4678aa83043so1968571cf.1
        for <linux-phy@lists.infradead.org>; Thu, 12 Dec 2024 08:11:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734019877; x=1734624677;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BiOSCtICkfmA4vxytEAY623sRmhmgOgepKEKhIeGLBE=;
        b=DQio/Q/lHNywQENil0X2aY1l94myPbricwQMaNGhhryqwl3UwrdfaWe2SVDOaVpjYH
         MJ/d+HAzQG59uq0ol5Md7qR0D6PFipFmD9zIy8eKKiLT3Y1C6tW1XlLs6V2GYJj0OsF0
         kheaIhxL491CbOgbHbcnMMYB9pOXicx8AYcNwrv4wG/h8Nzq171ePsjIHAl8z1DUB7lU
         hHEpFVTxJCshurjdrrkqtURtWkNbmkJhTYI598zJWyzu7LIAp50g+rk9lIG6jDseHKdp
         pRgNmDnzsyxkUfKb98AMQ86uoBcDM9Os7ESbEzP+Lh1r1i33rnsnb+AQ3xm0Ph7DlSI2
         aKRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnkA0DIuD84r87JXB7rWxejt0m951zGGNXKI+MJP+QGBAtXRM2sO2xm50GY/lDAG31YpVDOkx4anA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzfmJaJnhyTtZ6OYeTWertAkOKQgoKJj2a4T2B7GcZPwglo5hFI
	/UWZl3DXym111kGOIwauchCSx2NGTmW6Icuxupzy0lvnl00e4h/4ZK51D68pjqiw84eg1Dpl4OD
	orY7ajKppbKfxP6PW+a2L4Y1ZKnapmtF5hzkdpznR/9LQHKicEDvKUfjsTvmYDIpk
X-Gm-Gg: ASbGncsYSQ+p5S2ASs/TZvOBeARWrgpylFcuO9DvYDZTFRGUdfZd2odYBDaeEwdhDyi
	RirIiGQbupdONsqQaTi8Zwgu2BaaN5hq3Y1756L8omlw4ubeP1P8dnq22/X09+zheEffsk0DAOs
	c3Q/vZWBoGtHvx5HIFXa2pd94IXVk6zNzahHGn1P7WT1WHDl1jcAFs7RD+ZKI949GqDidMB5pXy
	x1RZ8n16DYHThXjSUijCsSnEGUiD3tjgmWrHeb1ASKgIdHv+Rzj7wfYHKZ0R89zWvygJZCh+SS7
	ZboG1IlIVpgOgqtq5L+1+fVj8rJOIvThod0Vwg==
X-Received: by 2002:a05:622a:4d43:b0:466:8e17:cd1f with SMTP id d75a77b69052e-467a14eee88mr5930041cf.3.1734019877228;
        Thu, 12 Dec 2024 08:11:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHXG4K2xpTGfNJ6S6PvXxb4g2uE22kte381m+d1ycbDxgdpkjeTWw74mGy0LyTdNM54e5Jl2g==
X-Received: by 2002:a05:622a:4d43:b0:466:8e17:cd1f with SMTP id d75a77b69052e-467a14eee88mr5929771cf.3.1734019876722;
        Thu, 12 Dec 2024 08:11:16 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d14c7991a5sm10426669a12.58.2024.12.12.08.11.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 08:11:16 -0800 (PST)
Message-ID: <e8e438b3-f60d-4257-956b-a9c77496bf8c@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 17:11:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: qcs615: add UFS node
To: Xin Liu <quic_liuxin@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, quic_jiegan@quicinc.com,
        quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com,
        quic_sayalil@quicinc.com
References: <20241122064428.278752-1-quic_liuxin@quicinc.com>
 <20241122064428.278752-3-quic_liuxin@quicinc.com>
 <d4f7ca97-b37e-4b8f-918c-9976e4a9cf41@oss.qualcomm.com>
 <677251eb-d3c3-48e1-ba79-fb8ec1e29c6f@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <677251eb-d3c3-48e1-ba79-fb8ec1e29c6f@quicinc.com>
X-Proofpoint-GUID: P-xZYAYzMo59M806X6JvNjJaisBq0AEG
X-Proofpoint-ORIG-GUID: P-xZYAYzMo59M806X6JvNjJaisBq0AEG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_081127_926272_927C57D6 
X-CRM114-Status: GOOD (  14.60  )
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

T24gOS4xMi4yMDI0IDg6NTYgQU0sIFhpbiBMaXUgd3JvdGU6Cj4gCj4gCj4g5ZyoIDIwMjQvMTIv
NiA1OjIxLCBLb25yYWQgRHliY2lvIOWGmemBkzoKPj4gT24gMjIuMTEuMjAyNCA3OjQ0IEFNLCBY
aW4gTGl1IHdyb3RlOgo+Pj4gRnJvbTogU2F5YWxpIExva2hhbmRlIDxxdWljX3NheWFsaWxAcXVp
Y2luYy5jb20+Cj4+Pgo+Pj4gQWRkIHRoZSBVRlMgSG9zdCBDb250cm9sbGVyIG5vZGUgYW5kIGl0
cyBQSFkgZm9yIFFDUzYxNSBTb0MuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogU2F5YWxpIExva2hh
bmRlIDxxdWljX3NheWFsaWxAcXVpY2luYy5jb20+Cj4+PiBDby1kZXZlbG9wZWQtYnk6IFhpbiBM
aXUgPHF1aWNfbGl1eGluQHF1aWNpbmMuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogWGluIExpdSA8
cXVpY19saXV4aW5AcXVpY2luYy5jb20+Cj4+PiAtLS0KPj4KPj4gWy4uLl0KPj4KPj4+ICsKPj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JnVmc19vcHBf
dGFibGU+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJjb25uZWN0cyA9IDwmYWdn
cmUxX25vYyBNQVNURVJfVUZTX01FTSBRQ09NX0lDQ19UQUdfQUxXQVlTCj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmbWNfdmlydCBTTEFWRV9FQkkxIFFDT01f
SUNDX1RBR19BTFdBWVM+LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDwmZ2VtX25vYyBNQVNURVJfQVBQU1NfUFJPQyBRQ09NX0lDQ19UQUdfQUxXQVlTCj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmY29uZmlnX25vYyBTTEFW
RV9VRlNfTUVNX0NGRyBRQ09NX0lDQ19UQUdfQUxXQVlTPjsKPj4KPj4gUUNPTV9JQ0NfVEFHX0FD
VElWRV9PTkxZIGZvciB0aGUgY3B1IHBhdGgKPiBJIG5lZWQgdG8gYXNrIHlvdSBmb3IgYWR2aWNl
LiBJIGhhdmUgcmV2aWV3ZWQgdGhlIHVmc19tZW1faGMgb2YgbWFueSBkZXZpY2VzIGFuZCBmb3Vu
ZCB0aGF0IGFsbCBvZiB0aGVtIHVzZSBRQ09NX0lDQ19UQUdfQUxXQVlTIGZvciB0aGVpciBpbnRl
cmNvbm5lY3RzIGNwdSBwYXRoLiBXaHkgZG8gSSBuZWVkIHRvIHVzZSBRQ09NX0lDQ19UQUdfQUNU
SVZFX09OTFkgaGVyZT8KClFDT01fSUNDX1RBR19BQ1RJVkVfT05MWSBpbnN0cnVjdHMgUlBNaCB0
byBzaHV0IG9mZiB0aGUgaW50ZXJjb25uZWN0CnBhdGggd2hlbiB0aGUgQ1BVcyBnbyBvZmZsaW5l
ICh3aXRob3V0IE9TIGludGVydmVudGlvbikgdG8gc2F2ZSBwb3dlcgphbmQgYnVzIGJhbmR3aWR0
aC4KCkl0J3MgdGhlIG5hdHVyYWwgY2hvaWNlIGZvciBwYXRocyB0aGF0IGRpcmVjdGx5IGNvbm5l
Y3QgaGFyZHdhcmUgdG8KdGhlIENQVSwgYXMgbm90aGluZyBlbHNlIHNob3VsZCBiZSBhY2Nlc3Np
bmcgdGhlc2UgcG9ydHMuCgpDdXJyZW50bHksIG1hbnkgcGxhdGZvcm1zIGRvIG5vdCBzZXQgdGhh
dCwgYmVjYXVzZSBub2JvZHkgY2FyZWQgZW5vdWdoCnRvIHBvaW50IGl0IG91dCA6KAoKT25lIGRh
eSB3aGVuIHdlIGxheSBzb21lIG1vcmUgZ3JvdW5kd29yayBvbiB0aGUgc3VzcGVuZCBzaWRlLCBJ
J2xsCnNlbmQgYSB0cmVld2lkZSBmaXh1cC4KCj4+Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBpbnRlcmNvbm5lY3QtbmFtZXMgPSAidWZzLWRkciIsCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJjcHUtdWZzIjsKPj4+ICsKPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHBvd2VyLWRvbWFpbnMgPSA8JmdjYyBVRlNfUEhZX0dEU0M+Owo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBkX29wcF9u
b20+Owo+Pgo+PiB0aGlzIGNvbnRyYWRpY3RzIHRoZSBsZXZlbHMgaW4gdGhlIE9QUCB0YWJsZToK
PiBUaGUgcmVxdWlyZWQtb3BwcyBoZXJlIGNvcnJlc3BvbmRzIHRvIG9wcC0yMDAwMDAwMDAgaW4g
dGhlIG9wcF90YWJsZSBiZWxvdy4gU2ltaWxhcmx5LCBJIHJlZmVycmVkIHRvIHNtODU1MC5kdHNp
LCB3aG9zZSByZXF1aXJlZC1vcHBzIGFsc28gY29ycmVzcG9uZHMgdG8gdGhlIG9wcCB0YWJsZS4K
CldoYXQgSSdtIHNheWluZyBpcywgc3BlY2lmeWluZyByZXF1aXJlZC1vcHBzIG9mIE5PTSBoZXJl
IHdpbGwgbWFrZQpWRERfQ1ggYWx3YXlzIHN0YXkgYXQgPj0gTk9NLCBiZWNhdXNlIHRoZSB2b3Rl
IGlzIG1heCgpLWVkCgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
