Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D890E94122
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 14:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kud+Nk+67jcZR6i9y4if3+61C80tD0bgM4iXs/Xzmu0=; b=dw0sBq9BVOd3rD
	i6AZyEccKdvwY8I8UeEdxdDS9l87ylZMnF+YdOJzawyJjMul1c0VeMjyIvm6d2rqDxUzMFrH0IwsX
	/eS3d0dC/DVIlzLx9o8NN2HBCF2z5u3YdCehULj4tkcHqqsGR4yiXMx9IqCSbRbWMc4LGg1Ky2Wb2
	W+XAp/lHSAysH6riWkJ8Kvk6d96kLqeew6y0IhZSVw4sZOVJOBqWRqD624UGSi/ghVDDBCI1S9Ypo
	/L5B2W8+dTyfjZ6D6OlIyrSr/gKiHtR6/GBP6ndErtEQDZ6JNhfw6aoYtDWw5vwu7Hhb26XSiZEIy
	SMHahRTVyz0symNn8PoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vab1n-00000004x0q-3SnT;
	Tue, 30 Dec 2025 14:48:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vab1l-00000004x0U-24Hp
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 14:48:50 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUBDWif2672752
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 14:48:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	44VcDkl37stqODWRuC2o4+G1/5u25FomI/9zY3CMzLY=; b=Dyzm3D3YP8nCHR4L
	/f7ElG5Z+6CqP4rUL8ETznvq/pm+esali8TB9TGpqtl2nWxhm0JtS859nA3/f3AK
	J1GKUFZfBnu9TCyYydErS03/9ok1ohHXGNUaNpDu2FUlznWJAO5aXqJbhBCBuNgs
	REWYdRWkv7+yDNPrHgTwXTsvAXk0DKxGLLbIF4t5weGAZzyWp2DaBd3GK4gKTLF9
	LVvDSIZsWey0+pOQHSJ6FvnJPBKk1RM1SsqDgfwnN/O32C3E3vdWMfoAP6R8VokY
	a0YqM6gnbLTx4loAId1UAAKylx+XFc3DPRuoyoY6ZRNH3uVx9a0frIcJAQKAcjZL
	is1Xkw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc4fcsrvg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 14:48:48 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88882c9b4d0so33689046d6.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 06:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767106127; x=1767710927; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=44VcDkl37stqODWRuC2o4+G1/5u25FomI/9zY3CMzLY=;
        b=MT3tmTxIwIQaErCFOwZbzZKFmmHLrPvjs4mUHxMw/BIhgb70+TUf0IY81Mu5/VrseJ
         o/xbBxjWatsdGE0WB0waoVAqnUF9Bs2HRqq7lyDQ6FmeqLmYVO/pCntFNesp58U/Xma3
         /Ntq+HhKqy/i0q+ogH6TS8LfDZJ4wSwlliZkpGdDkgyo91N9mGHCMsFmm+JvagQz1PQx
         N3YQi48t6hgGwMbRuL6oAdK6Fti1uVMyfBY1aM/+3u1jkSmrFgJDjUSN8wDrww6ksG9R
         YZLpY98kS6Ymoh0x0cM7kUvVabyZV3sQriHBEqf9CFU9wv/BbgEE9TE8/DMyl/2B04KR
         0tVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767106127; x=1767710927;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=44VcDkl37stqODWRuC2o4+G1/5u25FomI/9zY3CMzLY=;
        b=ZbQ6YDFho9o4Vg2dZPtv39na5dVGeTdXwY2C6reiWvRbKgLHVMEP2uV1wymkYo5+Bs
         oF9xbNWv4Esl9IcfkGO/t5xgXTp5lzgcnsfQF4UOHBLVNf3YGmViDdFR6RJdrkI3jj/F
         eVLqoba8leZ+xmC/V4Podo/uHRWSSdNlYhVEwNEkGSU6llzkPGBhZosemKOSabugnHt8
         CYmgHNpL5HFA9eu277Qavr52mQpdBrhqHG9O+mBmFcQSTpkGBFhBBZI4f4eDRIbjNAZD
         LiMy4NeeLWu3EIzx4ZmU87uKo9YKgbhcUsvHYgjvEb1LtGRa0EUiIJC3F4dsH/sHE2y6
         /g3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWT+3tImY5ngwntwOuHVCSw8JLRJ7pyY1FpxWtloBfTK9NZTDApsaSVfxzrsLgbHco0rB89yp7TGWo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJMrTADUAjTGAUxRE+K5hlSbMaMV3DfeSKd/zQCuSMzVMQDCqh
	PLLoxVh7WdU71jkO58pOyeSAMFBldmmBRBcktf9uREY1o4hbDemHoecUDS0W/a/5J99EcHoNrJr
	6p1nGn8y3AaMSqFNVCab1RzACZ0HSKJ9p2jrMd9DxTsYwgwJT1vkZjgTBC9QCQDO47rN/
X-Gm-Gg: AY/fxX6Mtia82bKqQV/0HooSiAe11EbNdBnk3TzVZYJhFBSe+PlLJcjl+I4oVn+MCLa
	e+gxuKWP2TAUIqtsKHLYy4I/N/fH4x+HCL6pFWUULALbZzjUP0VFwqbo6Ooe23/MqjmOsr0y1Tg
	OOic67Q/BVEG7gS8/UeRmi4HMJHd+FRp3BSVQXLse928zouJR8hFUsZ83d+Zsp5kyyrh6Txj/2Y
	uwj4UScB612BAasdrJ4gzPrhP5SDGl6AXHbmvuFOg+eiXRlCaidBUFM64LylZmTB2MvwE1OsLr3
	9VwU67V2jZ1K+kpmhqbwXOyvh3ssJT+r2dhGLx3pWWJoe2vpwKB6YnPW+19tFNprBCpm49xdHsS
	YMrABodxjE7DOW5Nd4FB29+WuGk7qb+lsjq/wPI+eWNuoZjWhHTxGIzVOcjQtwKgcCQ==
X-Received: by 2002:a05:622a:28c:b0:4ee:1fbe:80dd with SMTP id d75a77b69052e-4f4d620461emr290527781cf.5.1767106127613;
        Tue, 30 Dec 2025 06:48:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGETdr4GMukqFdT/GtejrMwrFxGgAe6B9S4UMqWyY1J7OQLJou5GsmhrZL6GOraFaVZUbZK3Q==
X-Received: by 2002:a05:622a:28c:b0:4ee:1fbe:80dd with SMTP id d75a77b69052e-4f4d620461emr290527541cf.5.1767106127172;
        Tue, 30 Dec 2025 06:48:47 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b80426fc164sm3500122966b.30.2025.12.30.06.48.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 06:48:46 -0800 (PST)
Message-ID: <2afaece5-d670-4ce6-93fd-de111219255a@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 15:48:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
To: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-5-pradeep.pragallapati@oss.qualcomm.com>
 <a33f5b15-d574-47c7-985d-f181c4784b98@oss.qualcomm.com>
 <a64f088b-8509-40cc-9f01-23c8b87a8f3c@oss.qualcomm.com>
 <80529f8d-8db0-4b3c-b79e-8d5a3004241e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <80529f8d-8db0-4b3c-b79e-8d5a3004241e@oss.qualcomm.com>
X-Proofpoint-GUID: Bg2ZLPLuql6JryjbDsaDIqWYQl73RAyN
X-Proofpoint-ORIG-GUID: Bg2ZLPLuql6JryjbDsaDIqWYQl73RAyN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDEzMyBTYWx0ZWRfX/Bx+yD3CSFQe
 XYWBiZV82H3wDdLPAVd6k7ePtZgpSr1yuNle2C+GC6tzvjXRwVo+qlhmRHQCllpbSUGeUZtCW3j
 xGZaM/1EUsifSY39AV7XaQ+t1XVVPuk5r/xBPreflwSB52easO3rd+l00iflbggczJMPB5zaBu7
 NfGEhnPMTG620Ubwv5A5POAuj/tzWk6aCOac3LRbPNff7u2IS2D4tkqNuS+0WMzqDv72PRV3/PF
 sFxMmNhfxuKZYQWXRaJ+XyPIPh8+s6TAtLKYY/ta3NbBAXWphCDld51PT/hI2981mjri2lV/NvQ
 2HHRkcppUsIcpC+x+UOohWrKzM0ss6LctfBNkTEWi/UhkjF48CkZPtEVOQcHW8lqm4bf0BV1n5V
 E1h1iXspVD8sugbvraKqHVtTT0ysqIu3jI0wT4QSiX/ZYD94jXlFsaIC+I4qk2PjxnHzxw+yVQr
 pOjcFepsVGIeBZh3K5w==
X-Authority-Analysis: v=2.4 cv=foHRpV4f c=1 sm=1 tr=0 ts=6953e650 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=R_39l88JEWD-bIkMqAoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_01,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_064849_649571_1D3DD735 
X-CRM114-Status: GOOD (  12.11  )
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

T24gMTIvMzAvMjUgMzoxOSBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiAxMi8zMC8yNSA5
OjU4IEFNLCBQcmFkZWVwIFByYWdhbGxhcGF0aSB3cm90ZToKPj4KPj4gT24gMTIvMjkvMjAyNSA1
OjQ3IFBNLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+Pj4gT24gMTIvMjkvMjUgNzowNiBBTSwgUHJh
ZGVlcCBQIFYgSyB3cm90ZToKPj4+PiBFbmFibGUgVUZTIGZvciBIQU1PQS1JT1QtRVZLIGJvYXJk
Lgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogUHJhZGVlcCBQIFYgSyA8cHJhZGVlcC5wcmFnYWxs
YXBhdGlAb3NzLnF1YWxjb21tLmNvbT4KPj4+PiAtLS0KPj4+IFsuLi5dCj4+Pgo+Pj4+ICsmdWZz
X21lbV9oYyB7Cj4+Pj4gK8KgwqDCoCByZXNldC1ncGlvcyA9IDwmdGxtbSAyMzggR1BJT19BQ1RJ
VkVfTE9XPjsKPj4+PiArCj4+Pj4gK8KgwqDCoCB2Y2Mtc3VwcGx5ID0gPCZ2cmVnX2wxN2JfMnA1
PjsKPj4+PiArwqDCoMKgIHZjYy1tYXgtbWljcm9hbXAgPSA8MTMwMDAwMD47Cj4+PiBJIHRoaW5r
IHRoZXkgc2hvdWxkIGJvdGggYmUgMS4yIEEgcGVhawo+Pj4KPj4+IEtvbnJhZAo+PiBUaGlzICgx
LjMgQSkgaXMgYXMgcGVyIEhhbW9hIHBvd2VyIGdyaWQsIHdoaWNoIGlzIHNhbWUgYXMgU004NTUw
Lgo+IAo+IFBsZWFzZSBjaGVjayBhZ2FpbiwgSSBvcGVuZWQgdGhlIHBvd2VyIGdyaWQgdGFiIGlu
IHRoZSBpbnRlcm5hbAo+IGRvY3VtZW50YXRpb24gc291cmNlIHRoYXQgc2hhbGwgcmVtYWluIG5h
bWVsZXNzIGFuZCBpdCBzYWlkIDEyMDAgbUEKPiBmb3IgYm90aCByZWd1bGF0b3JzCgpNeSBzb3Vy
Y2UgaW5kZWVkIHNhaWQgMS4yIGFuZCBQcmFkZWVwJ3Mgc291cmNlIGluZGVlZCBzYWlkIDEuMwoK
QmVjYXVzZSB3ZSBkb24ndCBrbm93IHRoZSBzb3VyY2Ugb2YgdGhpcyBkaXNqb2ludCBpbmZvcm1h
dGlvbiB3ZQphZ3JlZWQgdG8ga2VlcCB0aGUgaGlnaGVyIHZhbHVlLCBlc3BlY2lhbGx5IHNpbmNl
IGl0IHdhcyBiYXR0bGUtdGVzdGVkCgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
