Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B0ABC3ABC9
	for <linux-phy@archiver.kernel.org>; Sun, 18 May 2025 22:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfRVU45+RxlfMIIK+x9kPeF34lwMI+ct8/W3FAbCuho=; b=msx4NpJlUVhFvH
	NH9qF5qufnn5W7QdcSE34MPeJ5kWJJoWX1NN/Zlhq9wWJshuPV2tboZqBLjobumSM8hbreNkoX2v7
	sqyDKfsVHcPo25UQq0NWLNHhiAf1A0RTZvLoaAIEq5yjtVbN/FKgCPDK5hUGHrdHsokA+LrmqFd09
	Yz7uznh8Pn15SGT/6aiZwEhnoiNjRPxg2PIfyRVQE+ti9W8Re7pBBgHWanJ6b78X8iU6p5eFjbX6h
	wXdJrITEH+Mp6KcOKbqLp1q1RB2Fwzey1mPPU/Fkrn0ewJ2eyuz9hEI0oGj/L1lGR8em2qstYRK/h
	/psEmJWERjJ4KcUT1iyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmpd-00000007fEB-136o;
	Sun, 18 May 2025 22:50:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmpa-00000007fDo-3hlI
	for linux-phy@lists.infradead.org;
	Sun, 18 May 2025 22:50:08 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54IMZksC020609
	for <linux-phy@lists.infradead.org>; Sun, 18 May 2025 22:50:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=InqaD2zz8IXPbJ4Cc2UGd8YB
	VpLuDNI5sRhUYI1lQ5o=; b=MJn6Ry9eXF4v1O8S5WC/ZKbfJf/AFj3eZKRLF1ka
	nKsg/wkVc7SBYhuU+fi/z6NjhDtXtmy/NpfzUDno378HW0FtDq1b3Z37/jX3goQL
	y+UUedCia3w4J64l7azu96t6ZDE3ONxkoipDIR3VrqlOppjUCedtlT+DWFxjBHXq
	d1bSRNfxQB56a1PhjChq9NbGS/+p0A0cpTXIG1gS21/f9gllhmh15t86lYP2hT2D
	akcem1A+98IPaQPuMa3IuXOdnX4QI6EKTsA6F9WrTHfW+l5ITmZhrbcM1P8qNKg8
	WiLR3SYQFqb/fWb0BuIOJT+FEoljb+GR1IQXPyARj2EN5A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjkcthq4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 18 May 2025 22:50:05 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8c6ce05e0so22188406d6.3
        for <linux-phy@lists.infradead.org>; Sun, 18 May 2025 15:50:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747608605; x=1748213405;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=InqaD2zz8IXPbJ4Cc2UGd8YBVpLuDNI5sRhUYI1lQ5o=;
        b=hTA2BXJTiXyCW0DA8ZlP+YOerx/PuRhRMOj1PvGhevCm/R4UyiVTW6M43lvAif7HjG
         s8WBP5H0pyE+UHS3a5dUAOxR1AepmH+rUkQJ0+715P98oWak2c1OcMcwLX+2X6gFoVwQ
         w8hurVBqDnCuGRcfzBsBtU64BRF/lz8u7NpwbHUbt4g/S6oLPU5oBmKpnm9SXDI34C0b
         0jlKn4uYZsialskEYbukYIOf5J58d+LOcrjnVdNzmYLUG6ipf8ZHolmbmsTVugSKNlQ4
         rO1ohCaQOn+48To1kAsdA/HAoNK1f7SNcC8r9ugZkZh+B0SMJAQhexFOb2L2VQ0YdvbY
         /X7A==
X-Forwarded-Encrypted: i=1; AJvYcCXJWssO8UrMCjqF/IWfJHUv3cICw7rPT2K47PPyEzRoLnp8DTPKlMNYiP0u6bLjcw9vM+g949M/VP8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwV8hf6sVMVCtJc650S9+SASByTMjxNF7Bd4Rpa3S6lujvSYcpE
	cfPnlKZ2xD4GQXUJH8wm6Tz9tDc+tacJ2kxlH7sEIRcAllaMdX71uYDantf71DT/qJeMIuS4T58
	6r9/mpywhE2SuGJnZoKDUWLlq3vImAx1WrP2VV4MpD52bvMXR/NFQvqBOzBlN9rX3e/D6
X-Gm-Gg: ASbGnctHVhehfXW7ZNLip7RsTpqxvcojMBRqykp3KFeyNOkuxKeMocgrd45/2HHQgvW
	/1tJ4Zy7qUW9tN60/XApfAAywCjtfcAZMk0o1UWOsrjqcruV/1CY2mEQx/hw8d3+xmOWj1KcGhb
	FThquYZhg0GHHoYVj/B38osLpRTSL0pDcDdikLhMm9lJmJyyqI8FLZ+mqBR4JMIXV8ZsG7Yb2gE
	5RfGtvm+vhbddu5GdZtV4fkNgKo1ouhUaeq9wePhq0c407xK26BpAQW5DVWrgqrtayyuI44khJk
	51in/NhseRfZxHyf9n1Q5irfqiK1n/zCEc4UXqA3mRqB259Dzm9xEMFj6ljfco0DmfgIlrraQ7k
	=
X-Received: by 2002:a05:6214:27ef:b0:6f2:bcbf:1030 with SMTP id 6a1803df08f44-6f8b09542abmr153442836d6.43.1747608605134;
        Sun, 18 May 2025 15:50:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFtI/P9Ic6fG3W/Sv6Mi+6qg2rT4HzkrU7ujx4sNi9OVmydEHID9pyDdwB/cwiUhNpxwl1dJg==
X-Received: by 2002:a05:6214:27ef:b0:6f2:bcbf:1030 with SMTP id 6a1803df08f44-6f8b09542abmr153442576d6.43.1747608604790;
        Sun, 18 May 2025 15:50:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328085b8795sm16856181fa.79.2025.05.18.15.50.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 15:50:03 -0700 (PDT)
Date: Mon, 19 May 2025 01:50:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 01/11] scsi: ufs: qcom: add a new phy calibrate API
 call
Message-ID: <d7d2u5g3ikhx4plag7fkeeqint2766hjjplr4yoyehvqyfogkm@pcegku6arhfj>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-2-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250515162722.6933-2-quic_nitirawa@quicinc.com>
X-Proofpoint-GUID: xQjxkzFXObtuiLkXpu-7xZedUAEMveO4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE4MDIyNyBTYWx0ZWRfX+36USyYyGRJW
 wWch9E3KANfZEFPj2STBI4l+p9BkH/U8ocMZM4hfx1LPy3M9knM828nhRTdl4GhZz314HWSYniL
 kbYgnYIN3UNf6PK8T+v1kPFdDrKfqVzOdXqJw6+bcURx9Zl4f5Pdw7/GL5rA8Ds4PY/dqt//Yug
 aXvjZAxsy8aJw5lhD+OinxoIDF0IYRSeYX8L7d4YcgldtpCx3kf1qlFAtRrXZKn5aS03ZICURJW
 HuyplTn0LQcqCMD/B+M5pC4iXwrPCk/BvjZ2XBgCi/6daP6c5xqot0GC17Xce6tl+8T6S6STlfQ
 z7dSOPEU++SnwJTp6wX7vfU15gNwZghwLtwRU51pFhlA5ikvHpuMYuFLvWzPW6zLTXndqsoeBDt
 aVOddV4P6N0Q4kiWqjyE68VLXtirL3ItGfi4QnkvMsIGe6EU062jbqDfNyw9aPEiyCRdQhah
X-Authority-Analysis: v=2.4 cv=aJXwqa9m c=1 sm=1 tr=0 ts=682a641d cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=fB9s-OebfdFJWpWk0o4A:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: xQjxkzFXObtuiLkXpu-7xZedUAEMveO4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-18_11,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 malwarescore=0 suspectscore=0 phishscore=0 adultscore=0 clxscore=1015
 mlxlogscore=975 spamscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505180227
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_155007_044293_169A7E10 
X-CRM114-Status: GOOD (  12.83  )
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

On Thu, May 15, 2025 at 09:57:12PM +0530, Nitin Rawat wrote:
> Introduce a new phy calibrate API call in the UFS Qualcomm driver to
> separate phy calibration from phy power-on. This change is a precursor
> to the next patchset in this series, which requires these two operations
> to be distinct.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/ufs/host/ufs-qcom.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
