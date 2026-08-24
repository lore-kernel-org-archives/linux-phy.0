Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71525C5DF94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 05:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7RqKlBVx3fu7T45SWHAV6EurqJHuMOzVfahn0ZWF50=; b=yMxie8+KO+r77b
	2hiokTFruatDYGZCoFvnv930Ux2ebGy0/pBrfh6Utg6GFLc8L83Wypcf7QAD/2bk42adkIjCBaaOc
	qBoC2x65AL0bp3XpiuzjDbaXpiw40rlnQYaVq2QmF5Ftw42yvjD2aBc8Js7XqFMRtKqRMpdjqbc7J
	yrAtuuk1D2sDRBfeHVZb4TjZ8f6hPwf3frlSR46LgpX9CtG4sE3iCkOJGACCpys+Nt6f/0thwtBps
	EnIg4ZrA1/IqTGUVbiTsT5zuuF0qmNytcD6QZTBsu5gGZkpSyoeqMJ6UC5vXiQDjtJreciEhtOLFv
	sxvuDrek1aXb2fvAz3bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyNid-0000000FxBr-3D0N;
	Mon, 24 Aug 2026 05:59:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyNib-0000000FxBT-0708
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 05:59:38 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67O5RfhC867303
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 05:59:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zsj1FB3xuyBHeshQBDJjRvj44RjokWbqPIgy5SQ3Klc=; b=CO3JtPZZy9XfmjTA
	thRI+FrIgJ8Ftw0xeyVgmoNWTumaDjL5PShpC2w2Cffe6TG4CYlB5APsi8ZdX8dr
	e+5gp2p6LXpTPM49mO1gef5eVeE4nOPSSF/+f7WZdMYOGGXIjfTAwaGRZTHztI5m
	hEWQ7lcHxwSrvWBYvxdgP/PVaFUj5CtwfF3xx8PQc2AkNsJbUT6UZvwa0kpaGByZ
	HdNRfRD73w9Jhlb1gnwX8tBM3x3iX6UXoTSWmMKizU1/SJx1u3TQAajYxPk4YXjU
	elK20m/s9+87cxaJg4US0R1bcgtwVmzyIrGRP6JOsCqBCXFm1Are7vTVErnkf4S3
	EJHCqw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g744qwh9j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 05:59:35 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-38e7b87ce77so7634226a91.0
        for <linux-phy@lists.infradead.org>; Sun, 23 Aug 2026 22:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787551174; x=1788155974; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Zsj1FB3xuyBHeshQBDJjRvj44RjokWbqPIgy5SQ3Klc=;
        b=OlQ/Waj2LS/vhfmJwWkrYX0HDnnvo3/wT3dBHRUpC/wDjYnHjGjKZP/7+2FEhZlHw4
         xPayWgaW4geaagWb9n+FhJO1oSRfD85MUY6FAIZ+YbHAnYuDunu/Lcyrn0WR2toch+3m
         OF49EkIhlLyOdnshAehooYd3GaxK8DmUoqteVvxZ9BGYc2Gfj4gvFblagbor7WejQumf
         z5ldzUWZiNF/+kjo1Eg1YTnkdDiZ+h2v7IvcoKO6GvQPU2cpw2j0xgWYDNQaId83G/vD
         LsQPpKNm+h1Q+LocdO2rqDtVo+/MVLNbBGNTqYhH7+e/Gx8Wl/FYdSpgwjWJEUWQf8Qp
         gNww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787551174; x=1788155974;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Zsj1FB3xuyBHeshQBDJjRvj44RjokWbqPIgy5SQ3Klc=;
        b=NMl8EcwqAPOlbtWRA4szA9KC+zf5YfIFQiDwFX7u1XW5i2ew5++MrbNKK4xbgFtONO
         fsComVAY+rjEEhZTw6nbAQbqHMGjOqyLIywGVPT8T/vj04dxNsL1DhrATcoeYB3STsev
         f3jSz3cSrZHUrWgS2+/gQWTxHLX3NOZunWq6EluWt920erMl2kKbPQkz+3D17ma2jMYk
         2AkQZEr6UmkXEYLXZ6vqxZABZ7GsKyOBSdo/pEtAfKiep6796Ezr4occ8jCDmIElo2qK
         KcL6dC90kUeyFLitZg41xTbwudjcoaXQGF81xJBHxJmgdUbNF+iiYBCJzapRs0qhBp7k
         RsEA==
X-Forwarded-Encrypted: i=1; AHgh+Ror/FtA19YEIiUCeOcgIvwI8tYiCGhOT2it/flHX4PoSP7Ci01xRr1DH9DC25ZJRwj4S1LRwcwMbmw=@lists.infradead.org
X-Gm-Message-State: AFuF++lQ0zt15+aKfr9+CYdSkOZW7EPuHY6M+/GUoxRcqNDaEcYfPZbc
	iGni/GPDAk34z/uk+HhKXeGsoJbbTWO348nTmUS6dxjXB8gl5z3PJIAiK5AVR88sUhwsvP1sXhf
	ulz6GHhc0A8/F5pmCmKzZPWJHNK5zNiiyEy4bKFeLOyWYkWAXghmgP5CrcTNvjgpcqk1L
X-Gm-Gg: AR+sD10P7hIBGA0HnjWXS+RH5j1NGIv8uR+vQIWC3IxyQPAxaiei0idL9X0OJVw8+FP
	wvRJF3Cga1hn2CZQaMRkvWo2mbM9TtMyCRKmBj+pxLY+t+dg/LEDEPmGQw0Bs/LDF6d6h89oGXC
	pLgBZnMxwex22mEOWbMUrtYphrvXRXiUyV55mQFijsjevXQmKQZ5jg6+6hX02C0mYlCxw9/CUHS
	aeDUJVHefa9+bGZjQBLLVOD9lz5N38CNGbS4oF59IjpbrFm8BqffqEu3WZmMQ7tKFFFshIs/T61
	02/yYOCgp5Q2pXvQ2IdCHA/oTb0Bbn4F3QF7cInQPVrGZ+yy91hPTudJ/JjqYCjgIzkshkYZ7oQ
	N7yaWhJiPw3WUxetTzMWo5v+Q9aOD
X-Received: by 2002:a17:90b:4b8c:b0:38e:bbf1:de34 with SMTP id 98e67ed59e1d1-395c35eb2c7mr41084468a91.7.1787551174013;
        Sun, 23 Aug 2026 22:59:34 -0700 (PDT)
X-Received: by 2002:a17:90b:4b8c:b0:38e:bbf1:de34 with SMTP id 98e67ed59e1d1-395c35eb2c7mr41084328a91.7.1787551173105;
        Sun, 23 Aug 2026 22:59:33 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-395e4b46518sm9003488a91.17.2026.08.23.22.59.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Aug 2026 22:59:32 -0700 (PDT)
Message-ID: <076c7c52-d96b-4493-b723-98953c10b92b@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 11:29:28 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: qmp-combo: update DP PHY PLL programming
 on Glymur
To: Jason Pettit <jason.pettit@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa
 <abelvesa@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260721-glymur-phy-conf-v1-1-7c8909552c5e@oss.qualcomm.com>
 <20260822142508.25473-1-jason.pettit@oss.qualcomm.com>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <20260822142508.25473-1-jason.pettit@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: JT9-624WF8nwLoEf48E07NFyiP0KVc5N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA1MSBTYWx0ZWRfXwMhPK0rZOqWz
 WhKQyfy7kO6qxLnx5r3+zFqOqh2Vb4VTZebWfP1i7DWLkdL6tBwSC/Of25eJtVSk+QGIsOV7BGO
 QEj0PsfsCicRiZLcc5F107VB8TMTU7YV7BfP0XPO6OFwah2U2s7pdDOx4g6/9Uz2qRPIrvERcLi
 fvQTZoCY3ZFuMOLUEp1UkXYiX3Z94PnauA9oVwUVk9RdEosqXo1aTFgTaVtDrdYFBeieeuu7AzW
 kWzLwVPJLeJLi3kY8Oj6/gDelxzKBJtrB/js1bsOQ3iDXHcngcSmPbzgaVujz5MxfJmtHaC7uGq
 Vkw9wE+nXWLdDA1Aly9aafuxaGyogjFGcRJxR/Q5oMZnxEDiX7mWMbT8lb5X3ag892MxGCvwN0U
 T3ZeRfKGYzGpJ1wUofh64jnUA7BdN7AbTLQwvI1uk+Igs6iCGkx7R/pcBBIfAl8S7sRURk+KR59
 iMT7g2qychqZyI4LiUA==
X-Proofpoint-GUID: JT9-624WF8nwLoEf48E07NFyiP0KVc5N
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA1MSBTYWx0ZWRfX28wacKsKSA0c
 ju5Ua3cH/lhLRa1pOBw7TwBwV7xo/wsWCyVxlPDgI4ep7pGa1w+wsbuAXoI2sl/RDEdDA8Jal41
 vkjmGr/AGUN3g+Bu5iUrjuik37ums5s=
X-Authority-Analysis: v=2.4 cv=BNuDalQG c=1 sm=1 tr=0 ts=6a8bddc7 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=RPR65wM-umSgSowWlNQA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_02,2026-08-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608240051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_225937_213567_B0CB39D1 
X-CRM114-Status: GOOD (  23.87  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 8/22/2026 7:55 PM, Jason Pettit wrote:
> On Tue, Jul 21, 2026 at 10:48:33AM +0530, Nabige Aala wrote:
>> +#include "phy-qcom-qmp-dp-qserdes-com-v8.h"
> That filename does not match the one accepted upstream. In Linus' tree the
> header is
>
>    drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
>
> The "dp" and "qserdes" components are transposed. As written the build stops
> at the include.
>
>    drivers/phy/qualcomm/phy-qcom-qmp-combo.c:56:10: fatal error:
>      phy-qcom-qmp-dp-qserdes-com-v8.h: No such file or directory
>
> Dropping the line instead is not a fix, because the patch uses two symbols the
> header supplies.
>
>    phy-qcom-qmp-combo.c:321: error: 'DP_QSERDES_V8_COM_C_READY_STATUS' undeclared
>    phy-qcom-qmp-combo.c:322: error: 'DP_QSERDES_V8_COM_CMN_STATUS' undeclared
>
> Both are defined in phy-qcom-qmp-qserdes-dp-com-v8.h, which has been present in
> mainline since v7.0-rc1. Correcting the spelling is the only change needed. With
> that one edit the patch builds cleanly for me on next-20260821.

Ack, Thanks for pointing out, I will add the 
"phy-qcom-qmp-qserdes-dp-com-v8" header in the next revision.

This will fix the above error.

> One other thing for the respin. The patch no longer applies with a plain git am
> on current linux-next. The include block gained a line in
>
>    eca0e717aab1 ("phy: qualcomm: qmp-combo: Add support for Hawi SoC")
>
> so the context of the first hunk no longer matches. git am -3 applies it.
>
> One process note. The subject line reads [PATCH], but the changelog in this
> message reads "Changes in v2". The revision is therefore invisible to b4, to
> patchwork, and to anyone following the thread. When you split this into the
> smaller commits Dmitry asked for, please post the result as
>
>    [PATCH v3 0/3]
>
> rather than starting the numbering again from [PATCH]. That keeps the lineage
> traceable from v1 through the split series.

Ack, Sure I will post the next revision as [PATCH v3 0/3]

Thanks,

Nabige Aala

>
> I am carrying this patch as a prerequisite for HP EliteBook X G2q board support,
> so I am happy to test a v2 on Glymur hardware.
>
> Thanks,
> Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
