Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D242606A324
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 08:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gHWW2vwc;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Kj9LEuOa;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Iy8FmMSt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=foRR1NVpqHiCMSBWQ3z68e0wMNvXJgmM9w1foUlEzQs=; b=gHWW2vwc+1qJL9hL+5iB+ispNK
	XoFMc+JICtvZeyyvtB6/WvwGkSfzJqnC1RNt0+7aDAFxg93L/3BvD/NboQgFqvWLMWRtPK6zZIqnm
	C+AcDAVj0lol/L2Z1HEZYNHBkW9vIDltCP6kJrh2Rf/ldzlCTBp/vj6GMJemTlj3Ihc+beU1btjkK
	ee3WlS96Jdm5Hbw//rSJJ5KvCiPAAydzfaTGkOi8Qm30q8RTG90RgHt1fUOxHW0Y5XzeRnBgP9pKv
	Vlu0cJ2oIP9+jGArQoWOvJCyeTk5QaTLTi1zmKJVRCWlfnUWIPzRfN/zb77D71YHYq1r/DcbqXmV6
	VmeDxYRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNnCo-0000000Fqed-3GTh;
	Mon, 02 Nov 2026 08:15:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNnCi-0000000Fqac-0oA2
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 08:15:46 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A23vV1T2192533
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 08:15:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yg1/YfsNebg1oVBiAZqRAo/GrAy95WMhji8WTMUGHuI=; b=Kj9LEuOamZeCgZkP
	4givCJdnYCchWqOH8jCoO3IExIQ7WToIZXnGcBnQ8ev3+zPBXJkcxAqIc24Pt/nK
	wZQZv0LlpAuRcBOrK47isX+5Pn9jzQOkx9SP/HsvWKJ0RJNwD9d/K1din4f1g8AD
	nDezlx3N3cGOsytIrd66vEwOSCtAkHfcQc2EuOYlrhUpnqU4eS21peFZs2GMAvft
	xqzVif96c9Bw72/5RTwLERmJOM4CTO23nWVDrcyPA29E3/flm1K4eBMhKTS0jc4d
	GZWL1fgS5FsN2VHWlCnHLWl7CqoOAV1KQzsgDBxEYr8wBhyhpXKxkKA61aV0GAef
	DMQ/xA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hn93enqra-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 08:15:43 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8a08e315b5cso841758b3a.2
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 00:15:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793607343; x=1794212143; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yg1/YfsNebg1oVBiAZqRAo/GrAy95WMhji8WTMUGHuI=;
        b=Iy8FmMStoQnwfd3uyETY7cngoGdLcTn8q1dGBke68p+1nvHIxcrSGp4s2lGciPInCq
         j1Nd5c2Qv8i9rgmdfnDs6x6z4QaKGbQP4+A/+OCmLqKNUWLUc9FfC01sZQS4oA6STc7l
         eD7LfbnKZFdoPGHYu0Dh1uUWY/LD9JSzv9UuY+2bma2nYx41jgbjoGNxOpWmUsSSVjj7
         jLsvnQWwufe0FUEGU6IRxVdpGCKuAu3C0K5McCNG9hJ5uBAZnsNhYjaHyu3ZQj8KAZKV
         epWfQ6/7+R2l5OVC9sJp81FdILLYbWRzGX9VIr7NUe0QER4vsjV+RdgGAhHGs8jxvmLv
         /ENg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793607343; x=1794212143;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yg1/YfsNebg1oVBiAZqRAo/GrAy95WMhji8WTMUGHuI=;
        b=KTTI9qtv7roUXcNxfW8fZ9+Q3uzi0cUE0XlJ6G67M2CMVjzfA1/ZrNaMoyR2gjmisS
         ghOIhNghMHqGAkGCIM9E8Nu+wt1JqxnM8C6nTblrLs0jls+XBgdi9QbKSaTMdY7EI49M
         2oSg13zCICHtcAtT8n+QPyuwJTFsvmF3EiQaALRRtu1/wJIK6Se5tEkoyW2UpuYTkbWN
         nh1nteUjg9Cm/8EuBQPeVOU/EzcCnzAHpniCeVZjQ/nNR/nvWR51fpHgTteDx2NmpUs1
         NUdHYo20iia60FbgDH3JRHG53djxjwfK4iYJaleY9q+hAFyuHHPwfexKRMp+UoGILdOv
         utKQ==
X-Forwarded-Encrypted: i=1; AKwUvBw9jaK8PiowWevxDvEijGoDZOYgnan4GxWHOC4AjG9MjLhDcB6KJV4feXa5v2XPs10KjQ6RMbMlkQE=@lists.infradead.org
X-Gm-Message-State: APuU4Z8utXkhkD8AYOGeG56Y2XKyak5piy786taSnrTGI5S38/YJ67Rh
	DYm5BRHCKhKNc3383kj2DRrk835d2BD4Tf6p9//Ez7t5ULSB3pD2jIKd27gwbp9LszrrGvpXKNd
	1eKSJ6WoSqBbYH0QKcSB4i1yvfKpjl180pehMbcLc5nki5hcmsWT4kxMLsZ/d5RYYIecm
X-Gm-Gg: AYBFou0MkJgMxqqB5Ue/VNHZOOQGPPbZ+BTvuU41c6k4Kf8eKWslEAOOEOCh31fjeIC
	yjNfttc7MAiVDzb7mMUwIbkcyXY5vglfYCoidRy14ku+U50QPDitfD7856nIvdk4ocKAv/5Fry5
	WR5ItclVgh/pp+RzT6EigoEL5BX9NY1sC0kUoMaDBH9b0II9onqjDoh+2B/LHbNkPJdZwgc+n+F
	/XiQmStOjxEzXKMiKQ354FqA4ctr5ePEO/FT60BUt4uWQt3XqA7JTCCGO8awzPaV4ccYivezNXW
	TRcAFnIkZEiGpqjkAzSTNxSnKvS942y97D1Jhs4lVAMPnqM0WJEdIZNZF0C5s0T9oYNXwQ7fFon
	7GHgPm2+Vvzt99nRsTJntET1KOFQEMozg+5C3GyZMcC8n01ZHvnIbrcQUjJGey9aWKHWoHUI7ki
	NYYA==
X-Received: by 2002:a05:6a00:1c91:b0:89e:584:bb77 with SMTP id d2e1a72fcca58-8a9c098ab29mr7792366b3a.58.1793607342749;
        Mon, 02 Nov 2026 00:15:42 -0800 (PST)
X-Received: by 2002:a05:6a00:1c91:b0:89e:584:bb77 with SMTP id d2e1a72fcca58-8a9c098ab29mr7792341b3a.58.1793607342266;
        Mon, 02 Nov 2026 00:15:42 -0800 (PST)
Received: from [10.217.219.145] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8aada3d3603sm1573291b3a.37.2026.11.02.00.15.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2026 00:15:41 -0800 (PST)
Message-ID: <9f7c605b-e7ec-49d9-85af-7dd9d00a9079@oss.qualcomm.com>
Date: Mon, 2 Nov 2026 13:45:37 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] phy: qcom: qmp-combo: Add PM suspend/resume
 callbacks
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
References: <20261022104321.306679-1-prashanth.k@oss.qualcomm.com>
 <20261022104321.306679-2-prashanth.k@oss.qualcomm.com>
 <de3e5baf-dab5-417b-a9ed-225cbc56ce1a@oss.qualcomm.com>
 <a8104e92-990c-4e1a-aa4a-c97b9a801935@oss.qualcomm.com>
 <a05ddb1a-a84b-4db0-9806-918958f3a962@oss.qualcomm.com>
Content-Language: en-US
From: Prashanth K <prashanth.k@oss.qualcomm.com>
In-Reply-To: <a05ddb1a-a84b-4db0-9806-918958f3a962@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDAzMiBTYWx0ZWRfX29oylIQd4rP4
 lPFSs2hdeyYSVWn0b2gebj1BCkZChqyBntserDJQCyCl1B/suLxBIFWCizsmzJmz+iCkwrdFblz
 3ttpeXWW5WfQy79U9n6A1dVy7OF/+ukotNBn2lj58237hE17YbqtpixSmKsINJXHdtmfHfuhyOD
 xaZXJOVarHDIRgeFf+BpRRKwNOOxyWVpvC+l2fpkAQwZm4om/+tJ1NYhL1LN40PDMpE0IHOnsyO
 b79Eb9Ate+CIaJWVds+fYQlFu/tNDhP1r2myLcxn261zYohc2aHzVAy0ax5NkknvNdE3c8lUeTP
 HQxotMbT78tvCygZCCCDoZ8nBFfCLjLfVoeKvoAqSYNGU3fKoeWsLlt0epkxWWYBAv39tzLqdsU
 bB8EU86npScQOd2iiojusbEQ/3uPxLGVKsW+x8QUchw8L9iZog6egs5OW8q0nfGJ08ddKWM2Upv
 Zz35Ot2AB+gg+ulP5FQ==
X-Authority-Analysis: v=2.4 cv=FciiV5+6 c=1 sm=1 tr=0 ts=6ae846af cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=3tw5ZB9OoNIg3H-R3REA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: cPv7dT4YJCW_c2ju4KFSGIf1Bzb7-wpv
X-Proofpoint-GUID: cPv7dT4YJCW_c2ju4KFSGIf1Bzb7-wpv
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDAzMiBTYWx0ZWRfXz5xvHs8uCw9c
 iMG+xIlGudHlegkwaIgv1InnDN/8j3NpzQJxxueL/7iWN397twSFiiQRmreG5k6BstNRc75fgLn
 EAgzWca1SdleC0YG3iychI7Q7RUwerA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_001544_247788_E4B151AC 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 10/30/2026 6:54 PM, Konrad Dybcio wrote:
> On 10/29/26 7:11 AM, Prashanth K wrote:
>>
>>
>> On 10/23/2026 3:53 PM, Konrad Dybcio wrote:
>>> On 10/22/26 12:43 PM, Prashanth K wrote:
>>>> Currently when we perform system suspend, the phy clocks aren't
>>>> turned off leading to power leakage. Prevent this by adding PM
>>>> suspend/resume callbacks for the qmp-combo-phy which toggles
>>>> clocks on/off correspondingly.
>>>>
>>>> Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
>>>> ---
>>>
>>> Well this still leaves pm_runtime_forbid() in the probe function..
>>>
>>
>> Not sure about the history behind this, I assume its for controlling RT
>> behavior from user-space.
> 
> Long story short it was an opt-in because it was broken.. can't recall
> if the issues were on the dwc3-qcom(-legacy) side or somewhere in the
> PHY code itself.
> 
> Konrad

ok, I'm not sure if we should modify it in this patch, I'll enable the
RT PM operations and check its behavior. But this patch is intended to
enable the system suspend/resume ops for qmp phy.

While at it, you had suggested to add mutex guard on RT operations,
I think we can add that also as a separate series since it needs
addition of mutex on qmp-usb driver.

Regards,
Prashanth K



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
