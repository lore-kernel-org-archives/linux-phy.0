Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79E4ACCD18E
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 09:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+n7XOeEXqo27fAejDzfNfIRAiUFpkQjJ3OzDs4q5nKo=; b=zqOR1dgcaMZr3U
	GL3GQ1ewTiS79IKRglxCRK3vjOwFW5XjcC89yrEytkXougInWmrGhnpvQbbeOB7J+DbqXuaIdwUv8
	4Ji/Smdv1fzYXrcErqXO2tc3n9Ee1cUylg2dFyFOFTZHlUptYa/ZJKC40K9eK4f6BKq9Wrw1i9ogr
	XU5uc5adRhXHv2iRtM1oTpbXwjsMDxjbsLiLfRPmk+CtlNMWctR3aFFgkQV0q9MsbPPys6noGcyMy
	/UlQlNOUkHslEH81aSC917xwhMIScdXjUqslWHrcIAHpaU6JAG7ug7TJFByHx+hSYEgBoJSy2SiL+
	Joe1nyeRwA3Da8kLhBXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xfZ-000000017ev-0udi;
	Wed, 15 Oct 2025 09:19:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xfT-000000017dE-1pyU
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 09:19:39 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sEmR014780;
	Wed, 15 Oct 2025 09:19:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zd0Js33uT4qAQsGbVa94/D6bzrHjWGPrzmHI09kg7LA=; b=QOJw+CNvy50zjqMC
	IgFfRdlXC5TLoszBj/q8hnGFMTt2O1tI9nzCMXlOETZkn/pjAtrOnhPwnGAnps+i
	3NUAT6LvtWvn4navdjmybHU9U5Zq6DG+ax0rEkH0NbyKBSgG71fk3RrU+U6xqRXI
	+Q94On32Rk8DC7hzpwHQU1HOXUR3d8Uha0nkEKRykCCI5/b77mE486Iu7g7St+C4
	UcsIwB0222EXyTOhg94f7pZ4DtsbmXpAgdi+aO6n3wI/25rlS0glIgSQSUBeWEDn
	ShvkPx/51yU8IgaMJJCCAjeBtC5bbIeX9ZgvoQlS4pcZO6P6IA8oe5iOnabxDQYO
	Tqmm3w==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfbj3v4n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 15 Oct 2025 09:19:24 +0000 (GMT)
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 59F9JNTp016333
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 15 Oct 2025 09:19:23 GMT
Received: from [10.216.55.200] (10.80.80.8) by nasanex01a.na.qualcomm.com
 (10.52.223.231) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.24; Wed, 15 Oct
 2025 02:19:12 -0700
Message-ID: <4bd619e7-e9ca-44a8-9d36-10c18d7a8157@quicinc.com>
Date: Wed, 15 Oct 2025 14:49:08 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] Add edp reference clock for lemans
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
CC: <robin.clark@oss.qualcomm.com>, <lumag@kernel.org>,
        <abhinav.kumar@linux.dev>, <jessica.zhang@oss.qualcomm.com>,
        <sean@poorly.run>, <marijn.suijten@somainline.org>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
        <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <quic_mahap@quicinc.com>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <mani@kernel.org>,
        <James.Bottomley@hansenpartnership.com>, <martin.petersen@oracle.com>,
        <vkoul@kernel.org>, <kishon@kernel.org>,
        <cros-qcom-dts-watchers@chromium.org>, <linux-phy@lists.infradead.org>,
        <linux-arm-msm@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        <quic_vproddut@quicinc.com>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
 <7jmk3txdrnit6zn7ufra7davmomggd3graizdu6wqonp3lljza@mfnxt2owpknq>
From: Ritesh Kumar <quic_riteshk@quicinc.com>
In-Reply-To: <7jmk3txdrnit6zn7ufra7davmomggd3graizdu6wqonp3lljza@mfnxt2owpknq>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX8VUjADvpBF8S
 kMdccCGoi2LX0d3PplLf45/vynuXKc10l8JtzCzzKGlNx2Y+Bep9yX37ktbVWBMCPvpgIdQB3d1
 vmAwlofGUcdN5HgfYyVU7CrXH+tkp19VEVKEeTWRuZGNLFOGDwJ1Jt24x0R/RE+0ZbeRX8Cn/ka
 RERxGOc3IJJ8arYtXyWRh00F2MFDt3oK1hIB6An6JCXtUXwfPyr+JUwCaMO8MyNOetpUgVJ464u
 Z2dHKe6fdTc2FvWHJ7vvz5QvliqUqITKrq5AoIB1+ksXq1upQ7M3FiNiu20uYWT9G3+3pX9S62h
 uJCK5NRAUki0R4EdGnivAYTi6BAzCleg7H4WJjLif+j2tnw9aNGy2JKs6T88P2J2swL5qUHLEb9
 pyQ9s1ZymTkjl61WWUURf8SKx6r5Lg==
X-Proofpoint-ORIG-GUID: WkUePfu7CdqX9UE-bIRZOgucfbNQ8Sp4
X-Authority-Analysis: v=2.4 cv=bodBxUai c=1 sm=1 tr=0 ts=68ef671c cx=c_pps
 a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=nQ7leC29giJESoIIZeQA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=nl4s5V0KI7Kw-pW0DWrs:22 a=pHzHmUro8NiASowvMSCR:22
 a=xoEH_sTeL_Rfw54TyV31:22
X-Proofpoint-GUID: WkUePfu7CdqX9UE-bIRZOgucfbNQ8Sp4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_021935_604092_137D2FC3 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
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

Ck9uIDEwLzEzLzIwMjUgNjowNCBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBNb24s
IE9jdCAxMywgMjAyNSBhdCAwNDoxODowM1BNICswNTMwLCBSaXRlc2ggS3VtYXIgd3JvdGU6Cj4g
PiBPbiBsZW1hbnMgY2hpcHNldCwgZWRwIHJlZmVyZW5jZSBjbG9jayBpcyBiZWluZyB2b3RlZCBi
eSB1ZnMgbWVtIHBoeQo+ID4gKHVmc19tZW1fcGh5OiBwaHlAMWQ4NzAwMCkuIEJ1dCBhZnRlciBj
b21taXQgNzdkMmZhNTRhOTQ1Nwo+ID4gKCJzY3NpOiB1ZnM6IHFjb20gOiBSZWZhY3RvciBwaHlf
cG93ZXJfb24vb2ZmIGNhbGxzIikgZWRwIHJlZmVyZW5jZQo+ID4gY2xvY2sgaXMgZ2V0dGluZyB0
dXJuZWQgb2ZmLCBsZWFkaW5nIHRvIGJlbG93IHBoeSBwb3dlcm9uIGZhaWx1cmUgb24KPiA+IGxl
bWFucyBlZHAgcGh5Lgo+Cj4gSG93IGRvZXMgVUZTIHR1cm4gb24gZURQIHJlZmVyZW5jZSBjbG9j
az8KCkluIGxlbWFucywgR0NDX0VEUF9SRUZfQ0xLUkVGX0VOIGlzIHZvdGVkIGFzIHFyZWYgY2xv
Y2sgaW4gdWZzX21lbV9waHkuCgoKdWZzX21lbV9waHk6IHBoeUAxZDg3MDAwIHsKIMKgwqDCoCBj
b21wYXRpYmxlID0gInFjb20sc2E4Nzc1cC1xbXAtdWZzLXBoeSI7CiDCoMKgwqAgcmVnID0gPDB4
MCAweDAxZDg3MDAwIDB4MCAweGUxMD47CiDCoMKgwqAgLyoKIMKgwqDCoMKgICogWWVzLCBHQ0Nf
RURQX1JFRl9DTEtSRUZfRU4gaXMgY29ycmVjdCBpbiBxcmVmLiBJdAogwqDCoMKgwqAgKiBlbmFi
bGVzIHRoZSBDWE8gY2xvY2sgdG8gZURQICphbmQqIFVGUyBQSFkuCiDCoMKgwqDCoCAqLwogwqDC
oMKgIGNsb2NrcyA9IDwmcnBtaGNjIFJQTUhfQ1hPX0NMSz4sCiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPCZnY2MgR0NDX1VGU19QSFlfUEhZX0FVWF9DTEs+LAogwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDwmZ2NjIEdDQ19FRFBfUkVGX0NMS1JFRl9FTj47CiDCoMKgwqAgY2xvY2stbmFtZXMg
PSAicmVmIiwgInJlZl9hdXgiLCAicXJlZiI7Cgo+Cj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
