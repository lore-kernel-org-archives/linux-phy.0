Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B41AC369D7
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 13:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7qqVfUij4UP6K8H7zlnZqBVkY7hM+b8T7PV6P9VxZo=; b=zH7InVd5fw5ZVi
	TwfWzATI/yMVMHspTlzRBvhtbPNYvcBphTSqeRET4SExpCNv1YhmOuec1IX+vYsE45EkZau2E9L74
	WqwroIx27ZKDyLqRo8CjqZO/2P0Jy0dQINWle/2wRX2G6xUXnZeOX//Arj54Zaco6NlmctBMMaLl8
	xdKRyJjhBKX+gCxPC4vBHgOgHvDPz1klDE1teV09b/Z96TreaB3uEcUfNySmjzgcRrlOPO8+7rY+A
	nmehuE1hdoTMCbhh6/Lj5shEigvCWdufRPVIPmJQFFBiL0CQ8YIzwkUYtRGwaNxZJGV0PvRrB6hXV
	6Y8wEAaKmD63qguCFWOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ZnG-0000000AXLA-2JR4;
	Wed, 23 Apr 2025 13:05:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7YB1-0000000AKiA-49yP
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 11:22:05 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAv066013853
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 11:22:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MBmXqa3SqlfHGu6HskzaGqDayNYdwR8418JrZVuGd1Q=; b=VmR7sYdtNY9sPQrD
	o5/hBpQ3whiCmYDAGqlFyXL1PZ37epsHRQd2ARf0znrzHPXJk7xmpsJ9BwYR3Lgp
	PC+guBZ2pr+XfmVry6HiEcJ96Si35YlSCdwGFjAlsx0fLNJivjAD3D9sEncByEF0
	JYYINkRFRbuUFTJTW4dGr/neApAfZOGURdzbHuQssG2hCDUVZ2n8kULLROX7Sdw+
	ILPUEJqxf7byQyGHIJOvMPB2lmUuGTW1NCrL+C41KSlwkKlyLEguh19Uj9LgoYCA
	Eq0xo0aLnfKdx0AUK+YXlkDI4vHQ9XkaPDu98C7sv0OMh8FO32ERhAL7KtxcXM3K
	PNbw0Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh39wn0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 11:22:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c54734292aso120372185a.2
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 04:22:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745407321; x=1746012121;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MBmXqa3SqlfHGu6HskzaGqDayNYdwR8418JrZVuGd1Q=;
        b=af+1ouqKCCbOapll9gXoyu/4+9ltHUvCt1boN1acXE3TNM04B6b70EMPytGc9ldBeG
         9wHSYGNO4N/awazNbas/g4uDo0kUsDOmtUSLWHHvRkNvIZpAfET80hIjJFSiIPnkoSNy
         3JAgw3v7t7eYp3YF/XEuVnj4VMHA8QFtT2n+7ofBrY7692mT/QFXsWmc47Un/lvIOfpK
         Lo5N5avcb8A6VVXyGqxLrc1hDUUTxAjhiNiTzVv6DXLwDQ06t4GuOHraJsc4voFVOh7v
         q1IcCe58xNt4K9WEkCBKHHjDq0BHuBRGuPNxt1NHS/gEjSMEHzkNWjPC6fBwyvI4dQwQ
         As5A==
X-Forwarded-Encrypted: i=1; AJvYcCUbAeLuSRREB28/rTfwPpS8yPlQDmD4piriEm69gKSXOdy3v8nFQjDUbXk9kzgZgqsSQM/h3WTKkig=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWcJvzKBsyMi/sjNprz6Sg8a8+AoLqrWSxz7dKe6aSQKE+CRqv
	4fXl1686LklHzI6seLBbCtUWB/3H5XJyIRPnld/xtX7wXeRLAZET0iInBSGmbFYN4jgksu+EhcL
	Ceg6azJbDSQF1803W6SKsSiz7PIqrjwd8XlA+DFT83uCqtg4AJF8xTo9ijLIDO0rk2APCuQJt
X-Gm-Gg: ASbGnct29ZeRDgZkc5ETAUKyBq679CXBUDC4qNdKfSaTaSUfDvPtwkVuhEGCkpm0j3H
	F+28LZpoL1FVl9FxCGTBqc0fWzr0WE+EfzdeIIMcWd5fPx336whNFsUanCtoOKYqmK3iNQ5i3F3
	a8HAxwJiN/fa5q0ia/ibqvsUhUHd3DQxl2Ci9IV8NKaAwKLgjhgnOMrwDKxRyK+uWRdxYGFMcV2
	xH6SR8R7NVsvgu539cPCo+fZK87gOBpgsw0pN6CJREifXALdMsOH7F1W3jx7ql8osLo9AOaFQcN
	itkxM3wS6Z9AGVU06YwYkNELFkpJ3n6EEzH+NHSIe6Ho3F7t1+BPDNg9PIabf1ZMZtM=
X-Received: by 2002:a05:620a:17a1:b0:7c5:8f37:5eb8 with SMTP id af79cd13be357-7c94d2cdeb6mr159763185a.12.1745407320905;
        Wed, 23 Apr 2025 04:22:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHmyvrF5d9qIzFP/diTkGdauGMkGsqby79Vk6CQ3T9WYIeciMXk/85jv8urHP/tvgBFaRm55w==
X-Received: by 2002:a05:620a:17a1:b0:7c5:8f37:5eb8 with SMTP id af79cd13be357-7c94d2cdeb6mr159761585a.12.1745407320483;
        Wed, 23 Apr 2025 04:22:00 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f6258342e5sm7324599a12.60.2025.04.23.04.21.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 04:22:00 -0700 (PDT)
Message-ID: <7a0eb7bf-d6d9-4e8e-829b-2df726651725@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 13:21:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 4/9] phy: qcom-qmp-ufs: Refactor UFS PHY reset
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
 <2820908b-4548-4e0a-94b2-6065cb5ff1f3@quicinc.com>
 <c2ec6b7c-421d-43c3-8c0a-de4f7bdd867c@oss.qualcomm.com>
 <a24ff510-2afd-4aa7-a026-199fb6d87287@quicinc.com>
 <CAO9ioeUDzYLMvqmsOQ-VfgLQLavHqn=QVYxyHzetjSfmhjKFjw@mail.gmail.com>
 <1a623099-40bb-4884-8d93-132138a4150b@quicinc.com>
 <b7027077-e9a3-462b-92a8-684a42d23604@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <b7027077-e9a3-462b-92a8-684a42d23604@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA3OCBTYWx0ZWRfXxWgyJGRXu99p +D+vcQGMk1MaZ/o63iFwDRBwl65R3O+eeJXok+DpUj8FaS9xFDNHUiI+UtMlo+d97TMWCzMKVhd 6y9mStIw1jbgahaLe+djv3Jal5CQ4BRhlDuSQsctbRfrpTRwKgLPWddUlXU/fjRnA49io0YNfC4
 A8YzrrK6Vhq815khdSTW954R4l6ScfHFqzAmIeVjP2NT8pPiSw4PfZvJt+bg+RRB9/TX71Rsm8e 2TARi0XiHwQYP8YgSZr3qlpHyTEbuNShkOQbBmNI0Ic+U+2T5LtOqmmYGoyt0nYIZIMIrcT/Nst CUuM/BvRDlMCmBwdgl3doRjePMuBNttNOIffGFCh9Q/C8WyrzvM0aMlMSweUmIgyjvOjUb3stKY
 Fmi89wmWhrDmnat0/W1Qdp0SPfWe4uj85wlws4AWcapWVzCfQkzSSwiyold6S5LrOLN520Af
X-Authority-Analysis: v=2.4 cv=bs1MBFai c=1 sm=1 tr=0 ts=6808cd5a cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=S3RF1rwLzzbCZMsKAAoA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: JJ_7aNRn9Z73XVlmPcx48i7IKnjTl5FS
X-Proofpoint-GUID: JJ_7aNRn9Z73XVlmPcx48i7IKnjTl5FS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_07,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 mlxscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_042204_048254_FB983C1F 
X-CRM114-Status: GOOD (  25.96  )
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

On 4/23/25 1:09 PM, Konrad Dybcio wrote:
> On 4/16/25 2:26 PM, Nitin Rawat wrote:
>>
>>
>> On 4/16/2025 5:43 PM, Dmitry Baryshkov wrote:
>>> On Wed, 16 Apr 2025 at 12:08, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>>>>
>>>>
>>>>
>>>> On 4/15/2025 2:59 PM, Dmitry Baryshkov wrote:
>>>>> On 14/04/2025 23:34, Nitin Rawat wrote:
>>>>>>
>>>>>>
>>>>>> On 4/11/2025 4:38 PM, Dmitry Baryshkov wrote:
>>>>>>> On Fri, 11 Apr 2025 at 13:50, Nitin Rawat <quic_nitirawa@quicinc.com>
>>>>>>> wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> On 4/11/2025 1:38 AM, Dmitry Baryshkov wrote:
>>>>>>>>> On Thu, Apr 10, 2025 at 02:30:57PM +0530, Nitin Rawat wrote:
>>>>>>>>>> Refactor the UFS PHY reset handling to parse the reset logic only
>>>>>>>>>> once
>>>>>>>>>> during probe, instead of every resume.
>>>>>>>>>>
>>>>>>>>>> Move the UFS PHY reset parsing logic from qmp_phy_power_on to
>>>>>>>>>> qmp_ufs_probe to avoid unnecessary parsing during resume.
>>>>>>>>>
>>>>>>>>> How did you solve the circular dependency issue being noted below?
>>>>>>>>
>>>>>>>> Hi Dmitry,
>>>>>>>> As part of my patch, I moved the parsing logic from qmp_phy_power_on to
>>>>>>>> qmp_ufs_probe to avoid unnecessary parsing during resume. I'm uncertain
>>>>>>>> about the circular dependency issue and whether if it still exists.
>>>>>>>
>>>>>>> It surely does. The reset controller is registered in the beginning of
>>>>>>> ufs_qcom_init() and the PHY is acquired only a few lines below. It
>>>>>>> creates a very small window for PHY driver to probe.
>>>>>>> Which means, NAK, this patch doesn't look acceptable.
>>>>>>
>>>>>> Hi Dmitry,
>>>>>>
>>>>>> Thanks for pointing this out. I agree that it leaves very little time
>>>>>> for the PHY to probe, which may cause issues with targets where
>>>>>> no_pcs_sw_reset is set to true.
>>>>>>
>>>>>> As an experiment, I kept no_pcs_sw_reset set to true for the SM8750,
>>>>>> and it caused bootup probe issues in some of the iterations I ran.
>>>>>>
>>>>>> To address this, I propose updating the patch to move the
>>>>>> qmp_ufs_get_phy_reset call to phy_calibrate, just before the
>>>>>> reset_control_assert call.
>>>>>
>>>>> Will it cause an issue if we move it to phy_init() instead of
>>>>> phy_calibrate()?
>>>>
>>>> Hi Dmitry,
>>>>
>>>> Thanks for suggestion.
>>>> Phy_init is invoked before phy_set_mode_ext and ufs_qcom_phy_power_on,
>>>> whereas calibrate is called after ufs_qcom_phy_power_on. Keeping the UFS
>>>> PHY reset in phy_calibrate introduces relatively more delay, providing
>>>> more buffer time for the PHY driver probe, ensuring the UFS PHY reset is
>>>> handled correctly the first time.
>>>
>>> We are requesting the PHY anyway, so the PHY driver should have probed
>>> well before phy_init() call. I don't get this comment.
>>>
>>>>
>>>> Moving the calibration to phy_init shouldn't cause any issues. However,
>>>> since we currently don't have an initialization operations registered
>>>> for init, we would need to add a new PHY initialization ops if we decide
>>>> to move it to phy_init.
>>>
>>> Yes. I don't see it as a problem. Is there any kind of an issue there?
>>
>> No issues. In my next patchset, I would add a new init ops registered for qcom phy and move get ufs phy reset handler to it.
> 
> I don't really like this circular dependency.
> 
> So I took a peek at the docs and IIUC, they say that the reset coming
> from the UFS controller effectively does the same thing as QPHY_SW_RESET.
> 
> Moreover, the docs mention the controller-side reset should not be used
> anymore (as of at least X1E & SM8550). Docs for MSM8996 (one of the
> oldest platforms that this driver supports) also don't really mention a
> hard dependency on it.
> 
> So we can get rid of this mess entirely, without affecting backwards
> compatibility even, as this is all contained within the PHYs register
> space and driver.

Well hmm, certain platforms (with no_pcs_sw_reset) don't agree.. some
have GCC-sourced resets, but I'm not 100% sure how they affect the CSR
state

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
