Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8D13CF65E5
	for <linux-phy@archiver.kernel.org>; Mon, 26 Jan 2026 12:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LLcYztMIq9BeeLUYGTYFgVSA+dWo/GvdUpqkiMiOT8U=; b=Imuo0gtC5m9Hyj
	h4EUw5Uvb0peiPsGJ0yGHkTpk69K+d+EgW8Q47UckdKuWFOmsiXz2I9CjXV3x4BryuTzGM7xvyN/V
	QDLOphMjJFjeqim/tdLYsionq5eMOuNOL2ImPlogdEGudeE0ybEnXPxgPUOFIt4IZeqRgACbTDIhz
	fP/u9CQABwfPq2ITBciIo8T9HTPtnTDZaX/bAjQ7TKYfaFAwehEg5/MObOLPoVKP5aK+TpSpfvsl0
	/US3F2sT2CjSkxrvZ8utfcfFX/HBtB8HjdIv1KOeVX4Irbwj4vW7rp5oQ8OD/TWE5Fb2tkWiHqxXR
	ZWp5bPKBIlPcTnz14QSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLIK-0000000CTz5-2uE8;
	Mon, 26 Jan 2026 12:02:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLII-0000000CTyj-1OqQ
	for linux-phy@lists.infradead.org;
	Mon, 26 Jan 2026 12:02:11 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q5UJgw1019092
	for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 12:02:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=191kVwVHm2K0DfJcsHgO8LYf
	afsR7Ibu+4/CuNbIkXY=; b=A5HfPT6jljpZM4rVOo1bSLf+QBsQvs/sbQKAU32s
	VOHaioD1ZU81vMKQQZOuxbrwEkT2Vr1H1ZcSImt1aLHwlZQcsiJQ8dEm+6SY/6OL
	f9Ad4QFhoAiIowHHJArXMgS8clo80W/3QGLTkIuAchc4iA9YmY4acbwEBI+66rau
	fGTWDtsB4+4F2YO7Ri736KHOYbkXaMckkPeme+rpYvIlHyAPqTkkzbEx7CMtkfFE
	xGgTJCIn89pGOeiTp62pHVUY9s8UdjkMqOE+S3OZ8O+NON5WZIikG77j2C1Gp4PM
	P2oD0WUxjIfl8lxWb1bkmOBHowXF+S1qJ3pLjOjegf3pFg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bx2680wte-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 12:02:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a5bc8c43so1198025185a.2
        for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 04:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769428929; x=1770033729; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=191kVwVHm2K0DfJcsHgO8LYfafsR7Ibu+4/CuNbIkXY=;
        b=S0SC/ubASiYM/gWRw8N1vRQggaqV3aN/lzBoo+2SyaN+jXsAUgTXlsq7OUP/z293yA
         Nyyaw7wThyPIGo0fCFhs+hJyjlaAv0uYXStOwTvsBRntYfobmmHlmW2EbcMGUu+DqcxT
         xtl3hhNFPhYD+fEDfBNOwQRcneKfUPxYFuPXFog6JYgnLh1y7DWjwTAos2XuMQk/NgCw
         migoI78Exyj4J9kWfmicshsnMdFNH18hJQMVRPFExmsf4OE3RiSs5MKjUN9e4fiIyJk/
         Z0RnJd9jtKMcsHxDZnwHAMEM0d/UewTycN7ZZhpru92NLfGFJgo80XSnxMOtZUsLILLP
         EMgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769428929; x=1770033729;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=191kVwVHm2K0DfJcsHgO8LYfafsR7Ibu+4/CuNbIkXY=;
        b=tn7yc5RE8sCanjgcnczuBLRZFlO8Egat10HhRPg+GJ0GiLsGb8QhuxIC70lT0m5T7B
         +n0w8ap28M5KqyGTIkqNSU9/9NiIX/BlpKyaw2zT0vXSwYiTNTxhOKExw8b4TA10+A53
         pNJAKgoToTrCVlFic3C19riXwin7fDfzSbF/SsY2vyWyoSeZHUXrM1rEM0GSo4LuteuF
         sf675znscZdQ0Nyza4X65H4/QjT2HP3vDvYKvi7vur0Y8UU49HrNnCPZEiZqijDqGrmF
         /jdJk219oNrHbVNCxrOri/t+LeBqrXQ3LMr/3rPlbwGawx0Q+Vv7RXLF2NDhR172AxTB
         LOlA==
X-Forwarded-Encrypted: i=1; AJvYcCX8vM3hP5yFBgmzL+W+XaFuTaWNiUKz3Zp2dXvRfQSKZJQEegK+jBQXc9DvlQVgLC87htz0R4JYEag=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyr4JaDS3Xz+pVTBDHIj1thvAzwEx8FnB4eNH6DQyyYQ++ZjtDN
	HoC3CZ4MRdH01tS+d1tnX52MfGhpHYLaPiEpJmV/esEqM/8Ds6dhB4bADMVnRLSX8IFJP4T95/a
	+ANb9oTnMknT8E9nK44QSpTpIxcno1rRqkBk7I/4CMHF6jYwNoeKvgz3nsiNsHsT85ZFB
X-Gm-Gg: AZuq6aJiCCsG8J90IZqp67jZAHwD4u9DgKPQa9wNvaYrzrMJ+ZWZvgyt9VL8xfflcdY
	Fr4GcawMxa+YVYLlN5rPBzF/IJiVUywHyzsLE2Z/PXrHsgB888tRcgVFBIzNmuWUfn/q3TPQQey
	sbzB6lrJ9gdjBBArkQ16xtREz4/pqhWV3R1MePlkpMO6vRBa93/VUAHl8uy55wlM+hqbokoATQU
	+8AJatK/1lY/UHGxfDJZP2qgnH31dsjwNSNn6SUVZrmS3NdLo0aNsqoiM5i2wMqP+Twj5dsADvY
	2JM7jlUYRVOLnTDes+PAW4qtBFsK9ED3wmNycqiCMtZ0EyxjAR2zCvw0eVCKrKr/yCGRe4rFsgH
	texrsc8BJM0RhcIQg9gkPQiDY
X-Received: by 2002:a05:620a:2903:b0:8b2:5cdd:6a16 with SMTP id af79cd13be357-8c6f968fa45mr435591285a.82.1769428928418;
        Mon, 26 Jan 2026 04:02:08 -0800 (PST)
X-Received: by 2002:a05:620a:2903:b0:8b2:5cdd:6a16 with SMTP id af79cd13be357-8c6f968fa45mr435584885a.82.1769428927836;
        Mon, 26 Jan 2026 04:02:07 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c24bedsm28726809f8f.17.2026.01.26.04.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 04:02:07 -0800 (PST)
Date: Mon, 26 Jan 2026 14:02:05 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
        neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com
Subject: Re: [PATCH v2 3/6] phy: qcom: qmp-usbc: Prevent unnecessary PM
 runtime suspend at boot
Message-ID: <ov6dzg3372zcxsin54us7budvebso65dh3vyt2st7t4ye2iepk@4dsjmhojzyec>
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
 <20260121142827.2583-4-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260121142827.2583-4-loic.poulain@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bIEb4f+Z c=1 sm=1 tr=0 ts=697757c1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=I_ukrOqQsWpVYGr8uL4A:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDEwMiBTYWx0ZWRfX3FwsI5IQftto
 ysmS29TVXpA7SSagW0qi6yCJ+I9btLOwhOqAxwk3eRFMt6n0NV5ZB3r7r77KqafiIQ2FDcsZ1BJ
 yBWYAVKBlEDrjZ+ZMHVMTksL6aNffm5Oyvz+6HXNMBj5AJRW3I6vkx0AwgP7Kn3xDRm4o2HEDp7
 yUpqJwLC+PZXnrkFj8ItRWowd6tnTLljFDSBnk9XjYXhaPzG60bTcljUKXorGGdmFJaLpmzVVGh
 cG5MJQenBDImjxC61/Hk0fCVtxqpNs+t7fqb7Mh0icDbe8cQdiXTyFwk7HbUtvuPV9uSObbsya+
 j4KAKQuZVH+epYfXd03Xew+8kuPMbJpBde66Ga7fc8jIVw7Ct/ddDEtndVQgEId+a5e+TYdF4tw
 JI6VEMWZBiyE6MWx56aCJB2L3kqu8AMXpbbOZVYww3RjG3G0t9rsB6/waak5U+q2/wAWcQJf1jy
 iQ1fFlXH8hLZknimdBA==
X-Proofpoint-ORIG-GUID: 00BuzYRtqPQjVY8cTo9GCDl7lJQmjWgZ
X-Proofpoint-GUID: 00BuzYRtqPQjVY8cTo9GCDl7lJQmjWgZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 clxscore=1015 spamscore=0 impostorscore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601260102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_040210_374246_B4E243A6 
X-CRM114-Status: GOOD (  10.91  )
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

On 26-01-21 15:28:24, Loic Poulain wrote:
> There is a small window where the device can suspend after
> pm_runtime_enable() and before pm_runtime_forbid(), causing an
> unnecessary suspend/resume cycle while the PHY is not yet registered.
> 
> Move pm_runtime_forbid() before pm_runtime_enable() to eliminate
> this race.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
