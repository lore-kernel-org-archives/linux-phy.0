Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39DC3C369AB
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 04:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djH41Q+rz1FrTjzEojBZNMoM5V2wn2Lzhx+k/W+d+ec=; b=xeKyfuIBhIyZG9
	DP/NFexx2k8IBERawtdKbGIB3uFD5uQ/iHQ1cUHV5DtoS/t16JRpGsmB/+oEf0UJbayYcCCJI73ub
	6olc/oaVvl0NOAS/V8NR+ttne/FfbBVgPOqEOOBFfY/ljUQnInT+mO+YDjLxaQvqUMRRnLcydK39d
	IjKbrc1fHJ/UPdaexP9qhAlMX9ylQj2f4SYvEaO1N3cF7VrgwquqadHEYoj8kb/8yLeNVoGHd7jZN
	rxQAJ9ed+vyhtMLwKoww9G7fVHbtqozTyhzaPebJtsFVlvp87Trvghi7Zv9Eyck9L7nlomjC/sv4m
	AION08WixMWPX/vZap1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Xav-00000004OVo-2dLj;
	Tue, 15 Apr 2025 04:08:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Xas-00000004OV0-3zRm
	for linux-phy@lists.infradead.org;
	Tue, 15 Apr 2025 04:08:20 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F15Ni2012728
	for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 04:08:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OfAMw9FnKcM+bSbPo/M8N6K85i+KuWMDiGkgDeFsDm4=; b=KTrcwBLlnerVHkCy
	Y8znUHrGW7YPEGSiB5Qa6ZulV+8sO6yjRcU/MADsx2xysJLIQ10tGXK4zyvPaTyw
	MmbLBcbRYbkevghls6+X3RZb93yL+Jf2prF1JUPF4MkhxXUx/L71BauBVxM5qsQB
	GbTAuCEmoy+2njd6F2VWLNBPDP1RMU/BsNWU90mdk8aSBi74GHWG9u5egUkLLsQp
	yVSljiTqpm0e+43Bs23hddQiYubVOITBs/4EUQXB/ZNq3HyrL7xXNRbjF+411BQ1
	zbKZgs3tybENFAmjTWA2bhAcxbiER2htGAWoet5D51+Dn0VyVzTF68lYsiFE8zMS
	512EMQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygd6ekce-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 04:08:17 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-22406ee0243so37996225ad.3
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 21:08:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744690097; x=1745294897;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OfAMw9FnKcM+bSbPo/M8N6K85i+KuWMDiGkgDeFsDm4=;
        b=MAMIlUWrRf+PM0GW39xMvifzuTMypiTLxD7P7J53PRlldflXghaI3nA1hA2uHcqrGw
         hz5OeyFhNEWk274rn3m3+FzCyqFqpCxrGXkvCMZPVTHLG7SdEE8jxVQIMcHSy/OHTeF/
         wtxkHWTGzri1NVK8GH9Ap9WwWVHmHgniREeS0tZliVtLuiOfhNemiAQ3Qf1MQPdEcA0h
         IhFCS07Mr6R++Kb3pVdxpkvNIllKhxlCSqJT+brOy2JYn2S3gcbJPy4XBVhfXoLfEQCD
         dFBR2mHgmOUTuoCQqHiDEohPWCfBNlkNnlEpptvub0eKxcvB5/rNYqSQEa8YI0JkK5vg
         iokw==
X-Forwarded-Encrypted: i=1; AJvYcCV2RZykbp5vo5ZLqw2aBgFu2QgGji7YW3vHwkC1iNJNW0SvFP86IKAGInGplToDrbHBFo7NLBE1Sjs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwJAEA0dgQJJ4wqTlTR5ObVaTsuP+kjIqaQD1EGyiGTgGAQ0SmE
	NxEKIdVruzUYfKoCzeBpTLBRPTitggALOfo7OaYeyryj6i1ErLLg7/sGvE136K0fekBeMnGGBtz
	Oyg9T4UJPArba56MOcG69KRLqZVh9QZSyt5IDvXILsqpIMytTbDU3X9q2DhJnovVC
X-Gm-Gg: ASbGncuU8wY2QwIicOaVIWTA3aDErptEul5/N3Zh7XbRTVBfNiFcSPzvqPkIBEWd/qg
	twmCrgoMposas5F7vxLW9GwWdOVSvKJtYZeOK4FoKXhc25pPendSokU0tbcL7TZF8RZti1dSUCt
	yqHxFAttJSO6H8du8sbe/Cudq29mCjn8sssWRQLfGK84m/rcr3wxnx3uHPj3zyCHP/4YsxtsFF7
	p3wI801rb0FKoEnd4GZ2fR3vy5iWZ/bMfjPUMHq2Cr5jD/HcUhV7ODNEtH2lFxZNVM1BmQVe7VR
	FF1NBvMUiWPwe0PX5UQvW+Dx2ILneVGF2OlPQFN7JVejNkV66esK
X-Received: by 2002:a17:903:41c3:b0:223:60ce:2451 with SMTP id d9443c01a7336-22bea4adea2mr211411375ad.15.1744690096744;
        Mon, 14 Apr 2025 21:08:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfNMHFUTKafJCZ9yRtG1Wxb7uhLpzHR2LHcpwK114phBQV66RupNgJbHDc3SbkjNoZ0glg7w==
X-Received: by 2002:a17:903:41c3:b0:223:60ce:2451 with SMTP id d9443c01a7336-22bea4adea2mr211411185ad.15.1744690096383;
        Mon, 14 Apr 2025 21:08:16 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7cb5381sm106856735ad.192.2025.04.14.21.08.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 21:08:15 -0700 (PDT)
Message-ID: <b850b468-f962-4ce4-a778-f1e47c017bbb@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 09:38:10 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] Revert "phy: qcom-qusb2: add QUSB2 support for
 IPQ5424"
To: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20250414-revert_hs_phy_settings-v2-0-25086e20a3a3@oss.qualcomm.com>
 <20250414-revert_hs_phy_settings-v2-1-25086e20a3a3@oss.qualcomm.com>
 <5ccf0252-c16c-44e6-bfac-7f94597c5493@quicinc.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <5ccf0252-c16c-44e6-bfac-7f94597c5493@quicinc.com>
X-Proofpoint-ORIG-GUID: uVohry9SoodCK7DHdsMn3vF4qlm6N5Wi
X-Proofpoint-GUID: uVohry9SoodCK7DHdsMn3vF4qlm6N5Wi
X-Authority-Analysis: v=2.4 cv=ANaQCy7k c=1 sm=1 tr=0 ts=67fddbb1 cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=p4y_1cVLeYHBzHAUBk4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 mlxlogscore=999 suspectscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_210819_006244_3B8079B5 
X-CRM114-Status: GOOD (  14.23  )
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

Ck9uIDQvMTQvMjAyNSA3OjAzIFBNLCBNdWtlc2ggS3VtYXIgU2F2YWxpeWEgd3JvdGU6Cj4KPgo+
IE9uIDQvMTQvMjAyNSA1OjIyIFBNLCBLYXRoaXJhdmFuIFRoaXJ1bW9vcnRoeSB3cm90ZToKPj4g
V2l0aCB0aGUgY3VycmVudCBzZXR0aW5ncywgY29tcGxhaW5jZSB0ZXN0cyBlc3BlY2lhbGx5IGV5
ZSBkaWFncmFtCj4gY29tcGxpYW5jZQoKCkFjay4KCgo+PiAoSG9zdCBIaWdoLXNwZWVkIFNpZ25h
bCBRdWFsaXR5KSB0ZXN0cyBhcmUgZmFpbGluZy4gRGVzaWduIHRlYW0KPiBXcml0ZSBpdCBhcyAi
cmVjb21tZW5kZWQgYnkgSGFyZHdhcmUgZGVzaWduIGRvY3VtZW50L2d1aWRlIiBpbnN0ZWFkIG9m
IAo+IGRlc2lnbiB0ZWFtLgoKCkFjay4KCgo+PiByZXF1ZXN0ZWQgdG8gcmV1c2UgdGhlIElQUTYw
MTggc2V0dGluZ3MgdG8gb3ZlcmNvbWUgdGhpcyBpc3N1ZS4KPj4KPj4gU28gcmV2ZXJ0IHRoZSBj
aGFuZ2Ugd2hpY2ggaW50cm9kdWNlZCB0aGUgbmV3IHNldHRpbmdzIGFuZCByZXVzZSB0aGUKPj4g
SVBRNjAxOCBzZXR0aW5ncyBpbiB0aGUgc3Vic2VxdWVudCBwYXRjaC4KPj4KPj4gRml4ZXM6IDlj
NTZhMWRlMjk2ZSAoInBoeTogcWNvbS1xdXNiMjogYWRkIFFVU0IyIHN1cHBvcnQgZm9yIElQUTU0
MjQiKQo+PiBTaWduZWQtb2ZmLWJ5OiBLYXRoaXJhdmFuIFRoaXJ1bW9vcnRoeSAKPj4gPGthdGhp
cmF2YW4udGhpcnVtb29ydGh5QG9zcy5xdWFsY29tbS5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jIHwgMjggCj4+IC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDI4IGRlbGV0aW9ucygtKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcXVzYjIuYyAKPj4gYi9k
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jCj4+IGluZGV4IAo+PiAxZjVmN2Rm
MTRkNWEyZmYwNDFmZTE1YWFlYjZlYzVjZTUyYWIyYTgxLi44MWI5ZTkzNDljM2ViYjRkMzAzY2Iw
NDBiNWM5MTMzMzZiYjZiNmQ2IAo+PiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNv
bW0vcGh5LXFjb20tcXVzYjIuYwo+PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xdXNiMi5jCj4+IEBAIC0xNTEsMjEgKzE1MSw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcXVz
YjJfcGh5X2luaXRfdGJsIAo+PiBpcHE2MDE4X2luaXRfdGJsW10gPSB7Cj4+IMKgwqDCoMKgwqAg
UVVTQjJfUEhZX0lOSVRfQ0ZHKFFVU0IyUEhZX1BMTF9BVVRPUEdNX0NUTDEsIDB4OUYpLAo+PiDC
oCB9Owo+PiDCoCAtc3RhdGljIGNvbnN0IHN0cnVjdCBxdXNiMl9waHlfaW5pdF90YmwgaXBxNTQy
NF9pbml0X3RibFtdID0gewo+PiAtwqDCoMKgIFFVU0IyX1BIWV9JTklUX0NGRyhRVVNCMlBIWV9Q
TEwsIDB4MTQpLAo+PiAtwqDCoMKgIFFVU0IyX1BIWV9JTklUX0NGR19MKFFVU0IyUEhZX1BPUlRf
VFVORTEsIDB4MDApLAo+PiAtwqDCoMKgIFFVU0IyX1BIWV9JTklUX0NGR19MKFFVU0IyUEhZX1BP
UlRfVFVORTIsIDB4NTMpLAo+PiAtwqDCoMKgIFFVU0IyX1BIWV9JTklUX0NGR19MKFFVU0IyUEhZ
X1BPUlRfVFVORTQsIDB4YzMpLAo+PiAtwqDCoMKgIFFVU0IyX1BIWV9JTklUX0NGRyhRVVNCMlBI
WV9QTExfVFVORSwgMHgzMCksCj4+IC3CoMKgwqAgUVVTQjJfUEhZX0lOSVRfQ0ZHKFFVU0IyUEhZ
X1BMTF9VU0VSX0NUTDEsIDB4NzkpLAo+PiAtwqDCoMKgIFFVU0IyX1BIWV9JTklUX0NGRyhRVVNC
MlBIWV9QTExfVVNFUl9DVEwyLCAweDIxKSwKPj4gLcKgwqDCoCBRVVNCMl9QSFlfSU5JVF9DRkdf
TChRVVNCMlBIWV9QT1JUX1RVTkU1LCAweDAwKSwKPj4gLcKgwqDCoCBRVVNCMl9QSFlfSU5JVF9D
RkcoUVVTQjJQSFlfUExMX1BXUl9DVFJMLCAweDAwKSwKPj4gLcKgwqDCoCBRVVNCMl9QSFlfSU5J
VF9DRkdfTChRVVNCMlBIWV9QT1JUX1RFU1QyLCAweDE0KSwKPj4gLcKgwqDCoCBRVVNCMl9QSFlf
SU5JVF9DRkcoUVVTQjJQSFlfUExMX1RFU1QsIDB4ODApLAo+PiAtwqDCoMKgIFFVU0IyX1BIWV9J
TklUX0NGRyhRVVNCMlBIWV9QTExfQVVUT1BHTV9DVEwxLCAweDlmKSwKPj4gLX07Cj4+IC0KPj4g
wqAgc3RhdGljIGNvbnN0IHN0cnVjdCBxdXNiMl9waHlfaW5pdF90YmwgcWNzNjE1X2luaXRfdGJs
W10gPSB7Cj4+IMKgwqDCoMKgwqAgUVVTQjJfUEhZX0lOSVRfQ0ZHX0woUVVTQjJQSFlfUE9SVF9U
VU5FMSwgMHhjOCksCj4+IMKgwqDCoMKgwqAgUVVTQjJfUEhZX0lOSVRfQ0ZHX0woUVVTQjJQSFlf
UE9SVF9UVU5FMiwgMHhiMyksCj4+IEBAIC0zNTksMTYgKzM0NCw2IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgcXVzYjJfcGh5X2NmZyAKPj4gaXBxNjAxOF9waHlfY2ZnID0gewo+PiDCoMKgwqDCoMKg
IC5hdXRvcmVzdW1lX2VuwqDCoCA9IEJJVCgwKSwKPj4gwqAgfTsKPj4gwqAgLXN0YXRpYyBjb25z
dCBzdHJ1Y3QgcXVzYjJfcGh5X2NmZyBpcHE1NDI0X3BoeV9jZmcgPSB7Cj4+IC3CoMKgwqAgLnRi
bMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSBpcHE1NDI0X2luaXRfdGJsLAo+PiAtwqDCoMKgIC50
YmxfbnVtwqDCoMKgwqDCoMKgwqAgPSBBUlJBWV9TSVpFKGlwcTU0MjRfaW5pdF90YmwpLAo+PiAt
wqDCoMKgIC5yZWdzwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSBpcHE2MDE4X3JlZ3NfbGF5b3V0LAo+
PiAtCj4+IC3CoMKgwqAgLmRpc2FibGVfY3RybMKgwqAgPSBQT1dFUl9ET1dOLAo+PiAtwqDCoMKg
IC5tYXNrX2NvcmVfcmVhZHkgPSBQTExfTE9DS0VELAo+PiAtwqDCoMKgIC5hdXRvcmVzdW1lX2Vu
wqDCoCA9IEJJVCgwKSwKPj4gLX07Cj4+IC0KPj4gwqAgc3RhdGljIGNvbnN0IHN0cnVjdCBxdXNi
Ml9waHlfY2ZnIHFjczYxNV9waHlfY2ZnID0gewo+PiDCoMKgwqDCoMKgIC50YmzCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgID0gcWNzNjE1X2luaXRfdGJsLAo+PiDCoMKgwqDCoMKgIC50YmxfbnVtwqDC
oMKgwqDCoMKgwqAgPSBBUlJBWV9TSVpFKHFjczYxNV9pbml0X3RibCksCj4+IEBAIC05NTQsOSAr
OTI5LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfb3BzIHF1c2IyX3BoeV9nZW5fb3BzID0g
ewo+PiDCoCDCoCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBxdXNiMl9waHlfb2Zf
bWF0Y2hfdGFibGVbXSA9IHsKPj4gwqDCoMKgwqDCoCB7Cj4+IC3CoMKgwqDCoMKgwqDCoCAuY29t
cGF0aWJsZcKgwqDCoCA9ICJxY29tLGlwcTU0MjQtcXVzYjItcGh5IiwKPj4gLcKgwqDCoMKgwqDC
oMKgIC5kYXRhwqDCoMKgwqDCoMKgwqAgPSAmaXBxNTQyNF9waHlfY2ZnLAo+PiAtwqDCoMKgIH0s
IHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIC5jb21wYXRpYmxlwqDCoMKgID0gInFjb20saXBxNjAx
OC1xdXNiMi1waHkiLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLmRhdGHCoMKgwqDCoMKgwqDCoCA9
ICZpcHE2MDE4X3BoeV9jZmcsCj4+IMKgwqDCoMKgwqAgfSwgewo+Pgo+CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
