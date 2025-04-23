Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40548C369D1
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 13:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvd8TZZwgpPDd0uP57oofbjb4vwRdA+ArPlIfeK6lWM=; b=Zrwqz6XF7ngT8s
	5xR2aJBe1CuxObqFACIRBMxDfVg9LLKF5tRwSs6nw6RrVOl/72WfZ43EItIl/3WyZp9Mp1fvyfyn9
	XEqNjvyW/t1O+9dAGRrWqIly0N7qbANKDGzaWbvSf2Ckl2lQzpMlV1+7ty4qrU8WwBIoCbPy3VIdE
	cFzGCI+4s729Ch62ScF+kwHpJB6se1KqHnrZlD4EeOJZLK6XLCgkgfutO6oXIsW7JqO6hsGCS9jAy
	ZNqtCIhg/yIKNpBelK8FAESeIZVTd1bIjJd6PSlzymfMIHYVFAd4Aj/KQ9w4g9ywYYZjkrqlhU4lq
	RYW729ahLeZm0deTaKKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aXf-0000000AiFI-02wI;
	Wed, 23 Apr 2025 13:53:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aFh-0000000AcqJ-3b0m
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 13:35:03 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NApUsr014055
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 13:35:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gesSST3I2MpEnFmeJa5ypS5I
	NGFvjsE/z3/d2bgX7FA=; b=mbwdTD0gUiHIlzwNnGcBQa9jIH7BinPCACO9hTfS
	z8O+fZDwmsUffir2JzHl2CLmdqpMbDLmWun6cj9bVdLc33PFLLFds7Ys8OG1BkmL
	IoFmNBLeRmHs2NZqKVEwyGj1lauclEzAuPHcRPm9NtwQKYWF9XQWIE/1pdqM/NTk
	Qh9aYR+Wwge19cj31Sr4y/G9KQtEUg7uos3yyWwdH1SDn/46xwVcFhuGsBiQaR6+
	r0BhQ3Fn6xJvHufcvKJNiIQXAtCq5GdO7O1wu6Tnvlyo+r3G6OsjLQE78N2N+36L
	rHwpcejcoQLoV2X895FprXVLJfB6Zglm9dvA2yv+B89gxQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3a8c0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 13:35:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c09f73873fso967026785a.1
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 06:35:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745415299; x=1746020099;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gesSST3I2MpEnFmeJa5ypS5INGFvjsE/z3/d2bgX7FA=;
        b=XnZt/nXGRvJcLaQQaxkHv3ED6lUyFyOvtHvvhpiGUcD8KZ+cceNQoEoPfE+eHrkQke
         BUveMNGN/0v4UByzpWmT6TgjoPUO3eU4QUcQMs0yfqwpH0RIyPZBr9tUH6/IIpXxdN5P
         ALjIpVj19Y41BTe5mpPYCLHNr5ufo0gBuYhDPCnNt29vel5Exdf6VrvGwxhpfVOtWlBy
         Dcf/mkOId45qh8c4qiGgvokFJRX//kcV9rFB8lwHNjO2batvGnVnGnmy1rUk2zVff3or
         4I5hZob21ijhw+0l6fZklptfFlwWy+U1NPhDmxY33HDLRMLuCANHFj0zM6ysbussU0Tr
         5a/A==
X-Forwarded-Encrypted: i=1; AJvYcCVGb4JObydJ/Nh2HfEeolxhnUKD6UPb0ZPO2HyJ9IDklDVxDey0fRw9Tdws8FogZ2SQYZKMSbRGykU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzY0JEMzlHEyN8w/4HORqa/hRbXe7yk06HfZNZrFtn863Bsdoat
	HwYbEM4MhEi39kwQVDPo6hnqNOEpU7t6wI/1dwtwegSpdI+JkLXhOtDog0cKfuOH9wDZ8blJT9m
	3bLlMwYfCLWAd/P88TgmrA+2za6hm9lYOaRumXTAvkXpHFxzHY8yqmecdoKoVYP0y
X-Gm-Gg: ASbGnctPmIoyaqJ0MtNf7QVgRctcJftcYq0snpHDQj3TjWYaeJmsglWTY1cmbly+6J0
	3prkbu220RHoSGSwQY6dnPjAMlee49gQk4W5LFUCts0pP94zHbbY2UZlJPoa18VstE/2xeLuINm
	ZcYZwO2gWoMWHuDX0UZst+p2qi60pl1N7SReG5ul6mXGyT6jA67GcloR1/SrSwjiYOp/q5vMQR0
	wOhHSM/2RCs9rGyJwRKnXETP0iNeYWOEpcIruAlr1rAS6xGKe/l6rFURrRgetJd0JcqEm05B8Fl
	SzZukplt57AiLqRb/YDSTEbXSZhoG6t6Ql61KFiTPm/fPaJWR1nJ5niZ0USoqwvNFLi2iAYxqrA
	=
X-Received: by 2002:a05:620a:3908:b0:7c7:b4ba:ebf9 with SMTP id af79cd13be357-7c927f98e4dmr3123333985a.22.1745415299651;
        Wed, 23 Apr 2025 06:34:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSwjmlcZib7gDeiGUVw/szN/iy8E/BLJscu+dW5fLmscxF+J7iPAozkJczfQ5JeB0jI4FQ8A==
X-Received: by 2002:a05:620a:3908:b0:7c7:b4ba:ebf9 with SMTP id af79cd13be357-7c927f98e4dmr3123327885a.22.1745415299093;
        Wed, 23 Apr 2025 06:34:59 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5f61a1sm1563103e87.241.2025.04.23.06.34.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 06:34:58 -0700 (PDT)
Date: Wed, 23 Apr 2025 16:34:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH V3 5/9] phy: qcom-qmp-ufs: Remove qmp_ufs_com_init()
Message-ID: <w2fuv2xnvszlbwdlxvakkex6sce2mm32uslft5ma2zvz2gscvd@chgzsflkgxvs>
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-6-quic_nitirawa@quicinc.com>
 <zvc3gf7mek7u46wlcrjak3j2hihj4vfgdwpdzjhvnxxowuyvsr@hlra5bmz5ign>
 <4557abf9-bcd2-4a06-8161-43ad5047b277@quicinc.com>
 <CAO9ioeXyDWOhe1cbGO_tR=ppZd1aC0GSdeMzQjir4XmDRMQ3Jg@mail.gmail.com>
 <64216a90-e2e0-435c-87bc-388c72a702c0@quicinc.com>
 <sajcoh34gyfcvhik3yairil65guvp2rt2xdmbmlpmlcjvst5ci@qojbxhmrnrxj>
 <0d763853-5b1a-433e-9fa1-23ea0184b9bb@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0d763853-5b1a-433e-9fa1-23ea0184b9bb@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5NSBTYWx0ZWRfX6c7s2/kbYcO9 Xad3s9Hjm1rKI+edDBzg9Gdc18j9uZaJQR0zg+NrHMGN+JhzUtNL3k5JYm/6GV7pUUHpTAyiPTp ctO7ma00B7MPFQTjegCUUFGrNeqKld/77Q+NYxgkEF5ObRY9dR0UPS3Kb8kzcTbTxWozzh+GeMN
 sMCoPNQsYTy7wTvGFxanGEXdCVmAN4cdvzQkrdsga3GzPSGSBm0xRlgXR8T2RTyC90I2Cm6Xb6O s+Y7E1B+Rn8f5fKxVo2MAMN624SvmHu5qQtEcOEFdUznohIsqLVZmF9CaiOsW4vkI8hc0eBsxWw 712ZJ8FPGu9ow17a5FZbMeswe95sO8WTBAlNT3fq4+1C51t3CGcztoY4YcrMqMRYq59k9WxCxV4
 JTfTAZT1zwtFusWUvGtFoOlNALec82BQJ2SbeEMcpZ6FKrfreslqIpTs0ubP0w3Ub3gA2ayr
X-Authority-Analysis: v=2.4 cv=bs1MBFai c=1 sm=1 tr=0 ts=6808ec84 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=aCPLThnsKnsU9gi7CwAA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: dPuzvkZiXt6s8Hck29Yl4xFGXll1itUA
X-Proofpoint-GUID: dPuzvkZiXt6s8Hck29Yl4xFGXll1itUA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 mlxscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_063501_908637_551ECB9C 
X-CRM114-Status: GOOD (  27.07  )
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

On Sun, Apr 20, 2025 at 01:38:40AM +0530, Nitin Rawat wrote:
> 
> 
> On 4/14/2025 1:13 PM, Dmitry Baryshkov wrote:
> > On Mon, Apr 14, 2025 at 12:58:48PM +0530, Nitin Rawat wrote:
> > > 
> > > 
> > > On 4/11/2025 4:26 PM, Dmitry Baryshkov wrote:
> > > > On Fri, 11 Apr 2025 at 13:42, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
> > > > > 
> > > > > 
> > > > > 
> > > > > On 4/11/2025 1:39 AM, Dmitry Baryshkov wrote:
> > > > > > On Thu, Apr 10, 2025 at 02:30:58PM +0530, Nitin Rawat wrote:
> > > > > > > Simplify the qcom ufs phy driver by inlining qmp_ufs_com_init() into
> > > > > > > qmp_ufs_power_on(). This change removes unnecessary function calls and
> > > > > > > ensures that the initialization logic is directly within the power-on
> > > > > > > routine, maintaining the same functionality.
> > > > > > 
> > > > > > Which problem is this patch trying to solve?
> > > > > 
> > > > > Hi Dmitry,
> > > > > 
> > > > > As part of the patch, I simplified the code by moving qmp_ufs_com_init
> > > > > inline to qmp_ufs_power_on, since qmp_ufs_power_on was merely calling
> > > > > qmp_ufs_com_init. This change eliminates unnecessary function call.
> > > > 
> > > > You again are describing what you did. Please start by stating the
> > > > problem or the issue.
> > > > 
> > > > > 
> > > Hi Dmitry,
> > > 
> > > Sure, will update the commit with "problem" first in the next patchset when
> > > I post.
> > 
> > Before posting the next iteration, maybe you can respond inline? It well
> > might be that there is no problem to solve.a
> 
> Hi Dmitry,
> 
> Apologies for late reply , I just realized I missed responding to your
> comment on this patch.
> 
> 
> There is no functional "problem" here.
> ===================================================================
> The qmp_ufs_power_on() function acts as a wrapper, solely invoking
> qmp_ufs_com_init(). Additionally, the code within qmp_ufs_com_init() does
> not correspond well with its name.
> 
> Therefore, to enhance the readability and eliminate unnecessary function
> call inline qmp_ufs_com_init() into qmp_ufs_power_on().
> 
> There is no change to the functionality.
> ==================================================================
> 
> 
> I agree with you that there isn't a significant issue here. If you insist,
> I'm okay with skipping this patch. Let me know your thoughts.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
