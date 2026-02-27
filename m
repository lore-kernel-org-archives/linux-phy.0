Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8156FFD8FFD
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 19:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKjSZT42dQ8pcV+ck7ipncvGz1RMVKq+MyMZNqymZsE=; b=lwfqcuJnZUh4hb
	1m9ll9O3CVPIbDN3J5xVf5biXWbRnqDNN5TdbS3VkQHQEDRsKrFNmiR4Sfe/5DFX8FUhNFx48GSIY
	+EuAosCLPfKDGXCijDzS7TXxttwX3wFHZlBGAVHjsrETHKAq9VmDTw9qKxrvhu7bCVZNtf1ZZ9Z2n
	j886YnP0reqKUoVjh7Ebs2E1R4+6X2dSPKkcPiolY6ReQ3hbh0wDoAljnJfFdCWfyR+5fNOI9nGDT
	9jvHOD47VjM05Te3LnfJUILDJYrH1ln6oX5oiIUcBsMOYWgpX7CLS0CtB9mvnphHXxdLueJzE3TnJ
	P0N3MEkWW+n0/7jjVT2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw3hi-000000092RR-14de;
	Fri, 27 Feb 2026 19:40:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw3hf-000000092R0-41d2
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 19:40:49 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RH0JFD131873
	for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 19:40:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=L75XY9VEM+sSzrGnvNJpY4LH
	cDeszKmzt7QufvAjjD4=; b=kCBEyDtKO2tuM+jyPbQE1di4CocBj7SILndsalhQ
	kbWohsHL61Q6Y9ZHxPlzx5+/bPS5rsWfrVQ5kNUws8DICCrAtjiijRIYxA2f+Hvx
	WonsGno4pmOj8rLq14LEat013dDab1ddiLv7qycJGM3K0kkoBB5zvIhxsClgoYNZ
	TdGKageIX/p/mqOhMHHeTv6lFUBO6idtpB5qMjzu7tV3AWV42/pLwqYqerRUbNH3
	fbnBblmJtKMXWQ9lkzBtAl1QEbpedvNw6CdYH0jAzKwIVDIh3OFKIu596HvKL1H4
	xZRH/TSNM5mXfLkHJb43s20PgseBJ0ufNRNVvASAGh8UNw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck43rax0n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 19:40:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3b0d938dso2167399585a.2
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 11:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772221246; x=1772826046; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=L75XY9VEM+sSzrGnvNJpY4LHcDeszKmzt7QufvAjjD4=;
        b=Cj8y0OrSr3Ls/cYQqr8+zwgVRSMI9a0AA4GvEeADLQMudKjy/UcgFxkzum//h00Rgv
         hVJOlpOp7Z2lWkSTEu1z78TeRNL2q77jWoFQLk63ykfg3dPoIdqejLY3qxupx/89QrH+
         2WMGLhHT2mVZYZD+SL98nPtU6GvPAnvR1ksaDht/d/cc+v9gzh0JTaDSEMgHLnyxXpR7
         /PurSb/8jYBb/Wa0HfwAIYs/7+sz0D6RkBmhIQw0oeLpICfGJxMyDLGqhD3Y1vfsKBmY
         YdVoAZRN5P7OkSVWAPe0L9jo1vlkvZvSxnxjaK/+LfXf3IAMykf8Khp/wnNU09T9/fFy
         ItMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772221246; x=1772826046;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L75XY9VEM+sSzrGnvNJpY4LHcDeszKmzt7QufvAjjD4=;
        b=rZM4md+hHpc3tKKSY/JQ8Qpx0mUmREAR2zlX+whWUqY5hMsZUGIRy3c/v644GHfQSx
         tYR6ehR4U/r8lDqOmDCYbxvMl0eC1qn2p70SEOOt23jyOR6+/M6NdJk2ot8RkLx0/FQm
         hr9fs5R4Maf65BDJ9ix0/XPAoKUo7F472fSYMOV1qqdYWsOrhbi52TS+iJ0lDe3bwTY5
         JNi8mDYxoaHkXkc0K3xJHBpqhANSDIwRkGpU/s/ZQvsryYo6DOc3U6OdHg7fzaEq50cn
         G4NSYZUilOEuk9QRlBOmGTqsRDwnuYVfzdWusB05XlhwMUW3qT/ZMVabgFhTyimUIS7V
         I6Mg==
X-Forwarded-Encrypted: i=1; AJvYcCXW1DkH62ShDTV0q5dinLIFul7J0zvg72VIYd/BlAtqxcWfJDxldtm3FV/yGwQB3on5Bm+JmkL+dC0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKHeRPx5USWlaAi6Asb42DZCD+ygdqENXSNQNCw9D1kCB2SfaB
	bRP+zP1m83mNfTrKQeT/WeDIEVMxXbZrZXq+IGLjlFkodDcVdwmYfBav9StG5TudNQN6GJWrqSs
	36EP2p6vS03S56W9dgX0G6CEK9SHEDqrieOJVY43XOfUpriHk+CXAxOoLDm1wsONMNZHH
X-Gm-Gg: ATEYQzwReafTSf8BcjUkan4cOUNxTu890eer4m3KxzxsYTPsn0wXdREMs7GqiJoJ9DC
	4xXv9qQ/q08ESzCcjLQynmoNyJsV+Q+sAFl/xPJRqa+hLKPC6zxRPqDEzl3kEHtJ/W3MVkgWHVx
	44ecH1XkRoO6qBYIbcudk+7NHxIijzG3RrPLaHMlRwgwNPsj0k4R3I9+IDZwmwjFG3Tq/U0WkMa
	i8FQ7cKgm+A9AV3Zrz5o5vKWXxiGJnDmAgSze97NH3vZI0uwlg+ge8wYTJ9hLTt8/pqlIasUud0
	fMfIdbR5Vq8GuA06tNH5uV9bhxnqDJ2OeNCdSPE+QD2n92nfJA0vi9M8iK0FMDEJldBwImV0Mvb
	Spnveu/YtX4EA0Mn7QKK3oAUeTuFd8f4jNAYNnFlyvSTHO5FWYH9oVOfhq7sIRBct2kLdESBBHc
	tb/sCks1GRvG4WOPr2wXBN+MlglyWEOSD033Y=
X-Received: by 2002:a05:620a:1a1f:b0:8ca:305b:749b with SMTP id af79cd13be357-8cbc8f3626bmr503266685a.60.1772221246392;
        Fri, 27 Feb 2026 11:40:46 -0800 (PST)
X-Received: by 2002:a05:620a:1a1f:b0:8ca:305b:749b with SMTP id af79cd13be357-8cbc8f3626bmr503263185a.60.1772221245826;
        Fri, 27 Feb 2026 11:40:45 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f30169e7sm15922351fa.31.2026.02.27.11.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 11:40:45 -0800 (PST)
Date: Fri, 27 Feb 2026 21:40:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qualcomm: m31-eusb2: Make USB repeater optional
Message-ID: <nka7f2iq7tbjthbhknl4ixtlmnasuy6jfkjqrmrnghuysm74em@7clv5rukburm>
References: <20260227-phy-qcom-m31-eusb2-make-repeater-optional-v1-1-07a086bbaba4@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260227-phy-qcom-m31-eusb2-make-repeater-optional-v1-1-07a086bbaba4@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: GxBM7qAxnG4BsFM7eh9gokVJgyspAhR_
X-Proofpoint-GUID: GxBM7qAxnG4BsFM7eh9gokVJgyspAhR_
X-Authority-Analysis: v=2.4 cv=DOqCIiNb c=1 sm=1 tr=0 ts=69a1f33f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=Jej4ySSpV8SEB3TWoE8A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE3MiBTYWx0ZWRfX3Sz0KLGdlrvQ
 AWz73OlMee8DBYUVQczuXatld1MQ24l5q6jFTZeu999NJ81mp6V2QOSdJB7C/qOTCVr2lgl7uaX
 pP0Afp91mvNq+O+9RgLjy1ShWEKHnLSmSPfaH4wuE9jfz5NNbvxx1Ywx1Vamw9EFLmnGK5SYhe5
 t+TzQhcJSQ2MzKJVxd2QvjJFjcE3pfAVbgoWCUgDpkrRBpJs57Owx5pl7vxuaY7hN8ZCxeQx1x+
 lDPkcHkA1gTBdpFEVT3R591/Ivid62DAgLsexpkGXSvFKVTnDMbRXAM34Jy/P40eAG/kjtC1GBY
 SwihvmChYVp4gyepua8t3K77JL+tiarv/CjM6aLuFTAGD1dTBKy2TSVDXBOWLC9oVKZLw6ZOBue
 tZl3gnL+ZFDT5dmo/SIRSkvKB8bJnnPGTTYyUIeqwucd88eZXUjqjCa4j0T4xpJpJHxq71k5SDo
 4GYAOhn/Yju8goGY0Kg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_114047_998933_F9F23B7C 
X-CRM114-Status: GOOD (  17.80  )
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

On Fri, Feb 27, 2026 at 07:47:14PM +0200, Abel Vesa wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> A repeater is not required for the PHY to function. On systems with
> multiple PHY instances connected to a multi-port controller, some PHYs
> may be unconnected. All PHYs must still probe successfully even without
> attached repeaters, otherwise the controller probe fails.
> 
> So make it optional.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> [abel.vesa@oss.qualcomm.com: commit re-worded to reflect actual reason]
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
> This has been sent initially by Wesley here:
> https://lore.kernel.org/all/20250920032108.242643-10-wesley.cheng@oss.qualcomm.com/
> 
> This is still needed, but for a different reason, so re-worded the
> commit message to reflect why.
> ---
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

With the changes suggested by Bjorn:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
