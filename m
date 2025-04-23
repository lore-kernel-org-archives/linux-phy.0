Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2BFEC369CB
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oFBvKla1j9hDWs+YbWsMC3yulPVu1FIe5iDf63EXiY=; b=nGqlntbC6XoLeS
	YJdPMF1ogNfORyimqFFpgz1kIp6vuus4BIS01ihkRVIE4T0g6JEjbNIRH5EkEAchX6mjeGCXHaBqJ
	xFdg8ekp6U4498L228Q565nagdozWtQ8nW2KDQ48f8aBxg7v/N2CGzF98C18jpkkUe2kF43OTKFvx
	yT0Bh3N7CzDwd1gZhuYLg97jUyq6tjsG/2g38qkCA666G4QhuHMA8rwQTorKp9W4q6MGkmCgkRSVZ
	q0ULJnij6X4EdYoszYpaYhSf11OVhQo26oTdEtehD11T5ukdjT3B/vvJ69aZVBX09s+OuoQu1wUDz
	z4APBXgrtSSL6yH1Zahw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7b5V-0000000ApS7-2YuA;
	Wed, 23 Apr 2025 14:28:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aRP-0000000Af0R-0xTt
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 13:47:08 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAS586008515
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 13:47:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rccJ163fvQMfzFmJDE9Su9bT/TBQ12k3JHUMjdZJ29A=; b=S8i7FCPkAFszRCcm
	0E5n7TrAYzL6Ya7GMYVKUEoTr9irVJTcLmn6oF9XqUus9aedNsFoiIhvg9442OCi
	AFXVq/HwiYB0I16TfSxL9E4KeJcial9AJCmIN5S2Z2uzTU0SJ0D01nYPVKHOzk+6
	L7GsprnTCxnJsJPcehkNWqdX/oorIjHFz5WI61CAq025XsolYulP4Fnu7wHi1xNE
	Gn7WZ5oQqZJDwuX5h+Sh1ZCMZ5ZlvLTQmdmTTOiF2rr05ZwHjOxLtYTBAVngAaeu
	s8FSngApsCaUi0IAZahyEriLS6BUIjxEDCwvLKPtBYHjjULWSZwXoYi7+mjgmcvG
	Y0yi2Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh5aa8g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 13:47:06 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f0c76e490cso14180276d6.1
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 06:47:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745416025; x=1746020825;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rccJ163fvQMfzFmJDE9Su9bT/TBQ12k3JHUMjdZJ29A=;
        b=ZKZzfZFa3P81AWmEV3D2Y8Xl1KojWXU685KE9zOZ2BZQMnrhjqfo/wZ/lY87myasug
         ITxWnHmm5sX4t+t1AERI8EHs6ySHTkA3n+IZW4S1lTdAJUG5LV2K6JZGVwpZBJLP+3X0
         FOK8VMCt2o//Kr4goy4jz+9szXyEsk7VH/fvl6cmiG+bgqFOCqGLsL+om6Xsj29fj/TJ
         bpxWKKiQpSzFBkTiuFiTIHps3ok76QfDDGf5RYi1M42Zc2q1OaFGeMr8VFW6mVZ9Ruyr
         TOj6tXGel5eQxTcAGkmxkt/w4L1SgpPaiMA8T3Pv7NolaPXfozunUGNfczo1TJ+YjuXw
         MCMw==
X-Forwarded-Encrypted: i=1; AJvYcCXBZ/8VA2lYMouksdnHCdLYV2CQZYLrPiziW+0OTNAIZIl3MoWebrB/tuFvbnwyUK2yMvdOLc+FUXk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0Kqi613z+jF9lv6nGJloWn4I7DYmADyvXa4LB6Yk4C58chnox
	1MnTrT0Bn/qG4GJJzhQhG6yBHkd3VBWIGE0yIct3Fbed0+aF7XrmKJ17zN8KfZxvtVMwNyxVyLH
	S+cNOQipV3coWhBkJ+zGZbnCE6br67hrkE5FCSdva2vFe1iDjNKfMW7IoLVk5dGwv
X-Gm-Gg: ASbGncvEEvxWykQzPJkbU2yOAsMiDbxM9HDTpWC4iGh2Iobj5L0LSM01toCSL7wE24V
	Yj6ce0yOjNDEnnes3ki3I7Q9zKEFSC61tNy2BBoDHd0UxEpvU1LtwpZz6zFN3qMgpNaYO1BEG+P
	TeqvirXw97s7+1zyJatfYEPj6ZQUY+bygZ4FhIzpfAMm2E0c8m9IKghbrB6DO5yYMUbQ+S2HhUa
	v3Cxn+wZkPg1cbRkqVdc5Qr6jtieZopuceWAd1CaRQb1saAUw+OeUgQ9eqPyrmjzpp9p17Zrakb
	BCWS2q65LIOgGOfELtaWa/TlsnGGfygKk83nnxh4drHQkKogeEKvkqaHnOqAFme5PAw=
X-Received: by 2002:ad4:4ea5:0:b0:6e8:fa58:85fc with SMTP id 6a1803df08f44-6f2c45382d9mr136299526d6.3.1745416025199;
        Wed, 23 Apr 2025 06:47:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8MdGQu9WPimGQ7gmBVWx+jYMYlEXhb+dpoDUfI0QxS1ZXNaNpC8Lyx3MI8nCs2MsAlqKO+Q==
X-Received: by 2002:ad4:4ea5:0:b0:6e8:fa58:85fc with SMTP id 6a1803df08f44-6f2c45382d9mr136299136d6.3.1745416024610;
        Wed, 23 Apr 2025 06:47:04 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-31090826cafsm17949051fa.69.2025.04.23.06.47.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 06:47:04 -0700 (PDT)
Message-ID: <1adda022-b5d2-43e0-8cf1-de8e72544689@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 15:47:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 4/9] phy: qcom-qmp-ufs: Refactor UFS PHY reset
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-5-quic_nitirawa@quicinc.com>
 <pur4y63xhfmqlyymg4pehk37ry4gg22h24zceoqjbsxp3hj4yf@4kptase3c4qp>
 <317faeaa-3130-4e28-8c5d-441a76aa79b4@quicinc.com>
 <CAO9ioeXnnbNzriVOYPUeBiWdrPfYUcMk+pVWYv0vZpJbFeByoQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAO9ioeXnnbNzriVOYPUeBiWdrPfYUcMk+pVWYv0vZpJbFeByoQ@mail.gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5NiBTYWx0ZWRfX2h+YVGuNR6Ik yxlTIANhTTW5aAXTClQkTcRLHF5UL/4AvUr8CjbX4Ulc4ssN0ol9Rlz8Xwby/7Q8ecb/I6CfqQa nO6Wm+ZlXdI9gOWN7EQzHvPgy7WNATjLeLyiWyQfu2FHUP5K/fiEEmA6QEzlWksJj7tq3OSkyq5
 uZ1v4OAzGwY2PjnNi1RKqP+t0fQovErQ/XR7zgJFsQLtB0JvzCrs2abMBahthxbL+/8r+oohzwi MGcsttumKMCEqgdNiSiJvNbt+tHjvjY7n7lW6aYTRH4Z+kweothykiLQw74+9QPx9w1geoLRQnm RxrA7PoHioqG7DjJCrPj47P0r4pyg4vdsZqrXmjM5EcpVcUsVPl7jX9lbPBY9/xRkfPNeQsyzw/
 lRIwz//Vu/Pzk2QN+BOT2YDpUoKhacJ4HQmysGfLuhB3Ycb+AcAZkDLMHxVKx2PSxgMmfoP+
X-Proofpoint-GUID: m796oI6O-ivH4DTI5z3ulUkIJRCXV9V2
X-Authority-Analysis: v=2.4 cv=B/S50PtM c=1 sm=1 tr=0 ts=6808ef5a cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=9yGjJ7AVWo4BwlzXCRMA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: m796oI6O-ivH4DTI5z3ulUkIJRCXV9V2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=929
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_064707_639870_52ACD404 
X-CRM114-Status: GOOD (  13.40  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 4/11/25 1:08 PM, Dmitry Baryshkov wrote:
> On Fri, 11 Apr 2025 at 13:50, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>>
>>
>>
>> On 4/11/2025 1:38 AM, Dmitry Baryshkov wrote:
>>> On Thu, Apr 10, 2025 at 02:30:57PM +0530, Nitin Rawat wrote:
>>>> Refactor the UFS PHY reset handling to parse the reset logic only once
>>>> during probe, instead of every resume.
>>>>
>>>> Move the UFS PHY reset parsing logic from qmp_phy_power_on to
>>>> qmp_ufs_probe to avoid unnecessary parsing during resume.
>>>
>>> How did you solve the circular dependency issue being noted below?
>>
>> Hi Dmitry,
>> As part of my patch, I moved the parsing logic from qmp_phy_power_on to
>> qmp_ufs_probe to avoid unnecessary parsing during resume. I'm uncertain
>> about the circular dependency issue and whether if it still exists.
> 
> It surely does. The reset controller is registered in the beginning of
> ufs_qcom_init() and the PHY is acquired only a few lines below. It
> creates a very small window for PHY driver to probe.
> Which means, NAK, this patch doesn't look acceptable.

devlink? EPROBE_DEFER? is this really an issue?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
