Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B702EA3F09
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 06:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+mJU6n4nn78ooQ8g1Scz4IpnCNAc5Deng3jnd0UUz8=; b=CXO/MTan/g5Bgz
	77pSHJ0K60KCwDfnp5gWcuewZwoizXwX+2sm6H6kHdGzaB0M9xC0UIJ2fd7aq9XwsA1qykDmBVb/u
	QYQE6HpMOZkMzo5rLcH2FWFjAv5pPDCcH1mlXXT9j+1+Bc59jMvx4pYbq2ufKpLd8V2Dx+/pEIAT8
	Fm5BEvCTzOzEyGopCLjthpsp3IVMhaN9Bhdqruoz+85vNXrOSGDh680k9N2jYB0xSCJbEqaoe1DRR
	j9taHBM0m9eCEDswsEbhV7fqz7sruA21dLewDUVV1Hf8dnM0tXoF/q4/UzMFIue6VW/fUsYLpK7ke
	+PyFfE3wm3Sq31pxR8Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vph0I-0000000GWQe-3eV7;
	Tue, 10 Feb 2026 06:13:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vph0F-0000000GWPq-3uyX
	for linux-phy@lists.infradead.org;
	Tue, 10 Feb 2026 06:13:41 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619MmOh41419505
	for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 06:13:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AdyNRRqdxDJUzqcs0bjYblKR/wx3iWD+303Ic0lmswc=; b=U546m5chsQE+MCMQ
	BhvIP0koiq6bUoygB25vRcmj3fApe4ugUNRktPbocht1CEKJIWcf8pgm8A0VTtWD
	11xwY7AtsEQz9aXyuFXP1D74moggOtx4EKp/6Z9fZT+FHfttqqMU+4Jx+7MiCrEd
	KDgcXzQnn4BzAdvH9iFyYlIinsLc3ldUv1arQMT5QaPAVOr83ys9c51uzUxmaCP0
	v5LSmeOi7KMr1iZhGLceS/oiN+egve11kFiO9guBa+MBVSyUYdFEKZPsXiZO7wht
	XeSghakLwQOdaLsqN3Np4GIl7PSN8g1enA2303OHyWMGBiM6iFFWv29nE9ZSMMEo
	qY+LNw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7rpvs6ea-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 06:13:38 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-354bf10ec2aso2837465a91.3
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 22:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770704018; x=1771308818; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AdyNRRqdxDJUzqcs0bjYblKR/wx3iWD+303Ic0lmswc=;
        b=EW3bTuDMQpBbuhFMK0C8XenI3nxted3XjIJA3VyB8mxObxmu0NzqXWhiW9s3Qo2MfY
         U33wEnNVhh6nW/dV/z5REQkQ7HnDF9UF4q6SI3ryTofv3MJoa09q+ZdHg+9HU9jfKNXO
         cyiyzSqIkt+iSjRRa7KUvB/8499udAS4Ytq/l21JlIPxvBBObMXUzKO9xBDK4pFOdyJV
         oT/NH7yWyg18VR+F3Qx5Om1bWeoI5ynqOmdD06GaGfBX7Xob7VeI7ro52xlkiJMuRYY5
         1zD2xgYvlHDJTviGotkf7XLqXYFrFy9mOK+FnVvJDsuAk8ItfdewaJ6K00H6kIgssLxa
         DlmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770704018; x=1771308818;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AdyNRRqdxDJUzqcs0bjYblKR/wx3iWD+303Ic0lmswc=;
        b=sf0iibpWvWcghwAl2hFIR3ID9lTchDWeNADzfih/nHJkfbs8iAVadWKzGOkHb4Q4VD
         B3pf5eaOaDq9LScK5dEf0lznLmWvLNovR9JUYRheZ0cjilc+L6G54FDfnf635BYlZAxq
         tBf+X4nkFO3nVoXsON3oUX2DkqX4dtf9POuymuiU/7y7oCFPRdGoLw/KOV4UQmvEBvx6
         U3VNjCYyB3jxsXDNVQttQtHO4AbgHNS4AJW0lFI8TJIojsDAORpENXai0tz0dOsz/Sul
         HpWFZv/YVfmGkNkfy7nNXPBZkruSqoAxN/JU8hznv/Ne5H9CMSxQy+YyYMjF8RDs7NTB
         W0XQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpHE9QiogLYSjXoZ3u0Rs352HPm1dhJmc5Comou3VlcKk9xn2Qb1vRNf2eHEb67t0Tn3Q6iK7SDtw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyE7lHnuq/r2MCzYMbhGYfes9NjN0mRcM7R/hO3CtSY//LpyGCK
	chPT6dBKDB5V6k0dO0tOyVZPTg7dDVbcu2hjEOoiZ4kRJIIdd6/V1DeKg9w5rxpGlcUvS77ej6D
	dBzJr5BFS4+ZJln9MoTftNtPC6FOtbp8YV8q5YV266ZbIkxp6Eg66AivD6fdPTxdwpH01
X-Gm-Gg: AZuq6aKKG7wFyIlbcpHBiaAtmApZ6pbK9fwCvcdIobbctiVXsWu7QI2icnQL0MXZ1e2
	9hYK7br8xWM2Z2ZTK8ARWL5qYiQ1ZQiY5U5p0yTY0CpLqWQUZbal1BI1rjbRI6DNQB1MnWhBXF1
	EnaKohj1BTRjQ6Zn9luY/oeZcNhpMlfkjGzrdMHA5E27r+hmZvJxKKK1n0Pq7GZWc6u07TDI8Ny
	APas7dzIabqeK+mP9A5XcVB4T0Txd0NPXeR0qzKAWGdDxY5EprAzAQdQcqD9e88BLpCBC5dvg5i
	AbNcs+x/VW3bZU5iQUz9XSXWje2TufRvZQNJcqAejKmPIYp1FIrr2gcIJJtVHlvM6DKH0UsE5Ez
	G9WNPn/p9yOSsdT0uNIJFkwjrvnoQnEwrXs/m/guBG1RF3XfUNEPbw5crEgQcc0iV2bJDUyQo3V
	OzVxMmFN1FPE3RNL8=
X-Received: by 2002:a17:90b:5748:b0:354:7be4:a250 with SMTP id 98e67ed59e1d1-354b3bd326dmr13600953a91.12.1770704017628;
        Mon, 09 Feb 2026 22:13:37 -0800 (PST)
X-Received: by 2002:a17:90b:5748:b0:354:7be4:a250 with SMTP id 98e67ed59e1d1-354b3bd326dmr13600937a91.12.1770704017142;
        Mon, 09 Feb 2026 22:13:37 -0800 (PST)
Received: from [10.133.33.6] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-354b31c9d89sm5624821a91.6.2026.02.09.22.13.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 22:13:36 -0800 (PST)
Message-ID: <ff34f47d-d2f3-4b4c-94b4-daf0c2e3b09f@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 14:13:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] phy: qcom: edp: Correct and clean up eDP/DP combo PHY
 configuration values
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-1-231882bbf3f1@oss.qualcomm.com>
 <1b78ea12-84ba-467e-b541-1ffd2348f38c@oss.qualcomm.com>
 <92556aa2-607f-4743-a480-19458836fffa@oss.qualcomm.com>
 <36ourp7swd36ptbal2gd7byrppownihbpkkxvocd44u7zddc4f@igo5h4yhbxs4>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <36ourp7swd36ptbal2gd7byrppownihbpkkxvocd44u7zddc4f@igo5h4yhbxs4>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA1MCBTYWx0ZWRfX6BGEnlJbl60r
 Es9xrKWGbJjL+fzF3wFab9JGYRW8G/2osQDajLXOIKSW3hsgu1gaXumTW93aVuiAeXcZmZLG5Yn
 HOfyRQyFdoQFyxfeb83ogTl5VwDiavXZf49ADBcBmkf1sSN/j/8455LKbS+MUCNwCP1VLIvLHiA
 CrmwUj6yAHkOZ/Wz44Hwukg/oMBuSZLZkM1ZqYv2qHE4DrLrVSYra/H2s8j4Oy993CKsu9ZMqbM
 cbgxMEMGCduPqokbbmGz/9avTBKf6T5wWLtDlsGVulwo7pIvZ2L5AfxA7BDLtLSrdSl5JcPF4D9
 6ogqkF2i5BY9c+JlFVNRj72GjCBOZwYe3kgYWNI5M12aQsgBB2okLhGhT9+TEm9i17q55xPz4GV
 SKcAMEXHrcFPV2KXJycOuGPVJvSoWMOkjSz4EOoUP0dZ8EOOmQGGgAE6phmHgB2UUIYy9UfFoq0
 sEIg8aNH+mVKmSMAG/A==
X-Authority-Analysis: v=2.4 cv=KKZXzVFo c=1 sm=1 tr=0 ts=698acc92 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pRcu1ZbixR8RBCY5_x8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: cEYFyU30swQX18rwaoh-SOrQUxadca_C
X-Proofpoint-GUID: cEYFyU30swQX18rwaoh-SOrQUxadca_C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_221340_116071_BA322F71 
X-CRM114-Status: GOOD (  18.13  )
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

CgpPbiAyLzkvMjAyNiA4OjQ2IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIE1vbiwg
RmViIDA5LCAyMDI2IGF0IDA1OjAwOjAzUE0gKzA4MDAsIFlvbmd4aW5nIE1vdSB3cm90ZToKPj4K
Pj4KPj4gT24gMi82LzIwMjYgNjo0NyBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPj4+IE9uIDIv
NS8yNiAxMDoyMCBBTSwgWW9uZ3hpbmcgTW91IHdyb3RlOgo+Pj4+IEFjY29yZGluZyB0byB0aGUg
Y3VycmVudCBIUEcgc2V0dGluZ3MsIG1vc3QgZURQL0RQIGNvbWJvIFBIWXMgY2FuIHJldXNlIHRo
ZQo+Pj4+IHNhbWUgY29uZmlndXJhdGlvbiB2YWx1ZXMuCj4+Pgo+Pj4gRXZlbiBhY3Jvc3MgdGhl
IHZhcmlvdXMgcHJvY2VzcyBub2Rlcz8KPj4+Cj4+IEVtbSxDdXJyZW50bHksIEkgaGF2ZSBvbmx5
IGNoZWNrZWQgdGhlIGZpdmUgcGxhdGZvcm1zIHRoYXQgYWxyZWFkeSBoYXZlIGVEUAo+PiBQSFkg
ZHJpdmVyIHN1cHBvcnQgZW5hYmxlZC4gVGhlIHJlc3VsdHMgYXJlIHRoZSBzYW1lIGFzIHN0YXRl
ZCBpbiB0aGUgY29tbWl0Cj4+IG1lc3NhZ2U6IGluIERQIG1vZGUgYW5kIGluIGVEUCBsb3figJF2
ZGlmZiBtb2RlLCB0aGVyZSBhcmUgZm91ciBwbGF0Zm9ybXMgdGhhdAo+PiBjYW4gcmV1c2UgdGhl
IHNhbWUgc2V0dGluZ3MuIFRoZSBIUEcgSSB1c2VkIHdhcyB0aGUgb25lIEkgZm91bmQgb24gSVBD
QVQuCj4+IFJlZ2FyZGluZyBIUkcsIHBsZWFzZSBtb3ZlIHRvIG5leHQgY29tbWVudC4KPj4+PiBE
UCBtb2Rl77yaCj4+Pj4gCS1zYTg3NzVwL3NjNzI4MC9zYzgyODB4cC94MWU4MDEwMAo+Pj4+IAkt
Z2x5bXVyCj4+Pj4gZURQIG1vZGUobG93IHZkaWZmKToKPj4+PiAJLWdseW11ci9zYTg3NzVwL3Nj
ODI4MHhwL3gxZTgwMTAwCj4+Pj4gCS1zYzcyODAKPj4+PiBUaGUgY3VycmVudCBkcml2ZXIgc3Rp
bGwga2VlcHMgbXVsdGlwbGUgdmVyc2lvbnMgb2YgdGhlc2UgdGFibGVzIGFuZAo+Pj4+IGRvZXNu
J3QgZnVsbHkgc3VwcG9ydCBldmVyeSBjb21ibyBQSFkgbW9kZS4gVGhpcyBwYXRjaCByZW1vdmVz
IHRoZQo+Pj4+IHJlZHVuZGFudCBjb25maWdzIGFuZCBrZWVwcyBvbmx5IHRoZSBzZXRzIHdlIGFj
dHVhbGx5IHVzZSwgbWF0Y2hpbmcgdGhlCj4+Pj4gcGxhdGZvcm1zIGxpc3RlZCBhYm92ZS4KPj4+
Cj4+PiBJIHNlZSB0aGF0IGUuZy4gZURQIExvdy1WZGlmZiBzd2luZyBzZXR0aW5nIGZvciBSQlIg
aXM6Cj4+Pgo+PiBIaSwgZG8geW91IG1lYW4gZW1waGFzaXMgc2V0dGluZ3MsIGkgZG9uJ3Qgc2Vl
IDB4MTEJMHgxMiBpbiBhcnJbMF1bMV0uCj4+PiAJCWhhbW9hCWtvZGlhawo+Pj4gYXJyWzBdWzFd
CTB4MTEJMHgxMgo+Pj4KPj4+IEl0IG1heSBiZSB0aGF0IHRoaXMgY2hhbmdlZCBsYXRlciBkdXJp
bmcgdHVuaW5nIGJ1dCBpdCdzIG5vdCByZWZsZWN0ZWQKPj4+IGluIHRoZSBkb2NzIGZvciBrb2Rp
YWsKPj4gRW1tLCBpZiB0aGF0LCB3aGVyZSBjYW4gaSBnZXQgdGhlIGNvcnJlY3QgdmFsdWUgZm9y
IHRhYmxlcy4uIEluIHRoaXMgcGF0Y2gsCj4+IEnigJltIGluZGVlZCBxdWl0ZSBjdXJpb3VzIHdo
eSB0aGUgdmFsdWVzIGJlZm9yZSB0aGUgbW9kaWZpY2F0aW9uIGRpZmZlciBmcm9tCj4+IHRob3Nl
IGluIHRoZSBIUEcuIEnigJltIG5vdCBzdXJlIGFib3V0IHRoZSByZWFzb24uIFRoZSBIUEcgSSB1
c2VkIHdhcyB0YWtlbgo+PiBkaXJlY3RseSBmcm9tIHRoZSBjdXJyZW50IGdvL2lwY2F0LiBDb3Vs
ZCB5b3UgdGVsbCBtZSB3aGVyZSBJIGNhbiBvYnRhaW4gdGhlCj4+IGZpbmFsIHRhYmxlIHRoYXQg
c2hvdWxkIGJlIHVzZWQ/Cj4gCj4gVXNlIHRoZSBIUEcgd2hpY2ggbWF0Y2hlcyB0aGUgY2hpcCBn
ZW5lcmF0aW9uIC8gY29kZW5hbWUuCj4gClllcywgdGhlIGN1cnJlbnQgbW9kaWZpY2F0aW9ucyBh
cmUgbWFkZSBhY2NvcmRpbmcgdG8gdGhlIGNoaXAncyBIUEcuCgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
