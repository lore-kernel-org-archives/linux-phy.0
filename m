Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 204BDCF65DB
	for <linux-phy@archiver.kernel.org>; Mon, 26 Jan 2026 12:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLG8sURg/vhYcxatlgqJ4l0T7zUojZMEN7E/eL+iN+U=; b=p2r0qSRiGHJs+y
	15Xactilp8TCbzh7MOPA3owD/8qvPXSSDjtTu8tR23sPp/jfPZq7UUXu6GLcF1zfB1s5WbzRRGImH
	Kw4aTL2aHlXTnV47u/NtJ8riVEnXIFIs4t30089jPCgSkFIr7FV5VYUhBftFIYW5b8woqK02JUHzv
	8E7MXJ5Dy5A7A4IUHCi1f1ijKfN862U3LvG1JkP3d7KVIReGlIs0zFsnuSy7GOkapnI/jeiXaO4Pj
	H5qh18ZOgxN0US1/chkehRZhzB/2wwHfxAYs3RFNu0cSojrsZBSVrO/fBfce+r/UWUyHjjwL62smt
	pmS6uICBnlPCZqAbwwTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLJo-0000000CU9J-35ot;
	Mon, 26 Jan 2026 12:03:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLJn-0000000CU8r-0ZOo
	for linux-phy@lists.infradead.org;
	Mon, 26 Jan 2026 12:03:44 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q8vnL0674191
	for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 12:03:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=64KB8OzEkT5gWqO6/CaUtd63
	hLK0dusVTvRfE5xlGVw=; b=SNMOC6BRaNJdkAfdD4DUb4Z4ODyiRDxcGXfQzJeB
	q0o/9XpstfesVc9VAFuJ7abGO/9DK/tY3sfq7DO6ar+Ni/TUBuvDLs87LOUzF+j6
	OEQ6jVdHVc1APqk09nuElRHqLTdQpbTbAL6/vJsQ/zjM0sGCH3OUIVRmpptUkUkV
	6lqWeHg/N7fkMGCzwNjgDQv03h6p44GYy0A7iC5169ezxm8TArMAugeUllkJWCuR
	FR9pUpvv8+9lJ6r1MOUZ6sAb+GDhklwNpQbCcHq0ooYCeHqJVCddYo0b6fP0WgzR
	BaM2b0cBT5E+rAWbZA2UCVR4+zZn3YCo7TTwqBZYbXqmzQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq6uvdp4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 12:03:42 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a289856eso1397283085a.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 04:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769429021; x=1770033821; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=64KB8OzEkT5gWqO6/CaUtd63hLK0dusVTvRfE5xlGVw=;
        b=jZ/Xr8Xp0htkEG6hNqeEj06Jy/skuTGfDI7O5IR/MGOT9Ril8Rj57Kf47X7KkNQ27P
         Klr/WzmwtF0xpEWdhpMNzwY8u6Cvv9vkSsG07oQLzcJ2cUBBLWnrAEAKkQAqt93scPYP
         iL7h8tkkKblHOXYTzKunGlVNIwh4zcxsToXYbTt0L6o862R2Jnf2MgYRwk26wVKxhsod
         gloIWm5ZMSiAZF5cf+mxfY6atwCuXD+0XDOUHNmjtbQ3rtHpE5X3uI5hHovO31ElFIG4
         iB1JvOCzIWZKGQRF7VM4LYX1Dyf9DJWpx5QaEt/0lSw8ZBIrSLzTnpht+/z7Z2LS/9KN
         fsXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769429021; x=1770033821;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=64KB8OzEkT5gWqO6/CaUtd63hLK0dusVTvRfE5xlGVw=;
        b=db3MRcjusmID5G4Y31L5FtKl6Um3lwLJI33736QLxZst62GKY+qoTQ6JFG6j7j5csb
         p+/VngEIzS7qyg76Eukby2hVpj7q3e5NtZwQ62gN/7cuCFlK3nldCEl7rwTtjRj2A3JR
         1vrBtEoHCl6P0yjiWmrhQfRZNfPHX1zQebqofanFnvAz2wJ/bs73UNjWv7RXtqSwmipg
         g4Iw8acbAr7KEr5PrPrWxgKgI/Vqdjftkq1xa/OZYbcRtl6rJjKOb/RYFBeDbJIiG8w1
         ELRKvz+89HtcprfA/dyD/Eo0t38FRnH6Hb+8RY2j9shg8elR6vzZTlrO91Cex1Q0OmKc
         rRqw==
X-Forwarded-Encrypted: i=1; AJvYcCVWf9EUGEW58aYgkjESsPAW/BG8jhrT7+U1Pwp6jFgdyoV2v1cbPX6GLoe3U2suSUzbFjoUXSZQcKc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXUQfbmoQK9YAxsEOj67SDd3gO7CIbAZPWgoMlMSdH46wP/sKX
	vx4pwSKXm9DZqMkMRnWGNISWCpZEfWyeKNuDW7XrCz+CsgVGjs2MruyEhhC1yIOMZwXewqxfJR6
	4pJPaavW5RhDuPm2CdS4LduU0xoXZGRfFzjcG1BX5BM/9t+pKQfSZ1Zc3H0B3pW9uP6jL
X-Gm-Gg: AZuq6aKl7IwdlYSINMYx8l7Sb8yNSaILVyHVKvfL3u2zTmpq4FetSi4OO2PU50kRh4/
	b8P2vtOdCgyc7JiZQxqQD0B/bP6Tr9iSJRXzjK7EezID47WwK32GooU6iw5E5N+P5Lj70XIv6Jp
	If/WG1BmPbx7cOp1daetUlwBwqSnZMBkPsufBhF/JLTct7V3dzYrvwrQ/eAgKKBF4xVyJIV1XIz
	+5ZHqL322+OMiD3+MJQV76EdXGseSlLNHYvob03QdvBZztgEMf0WG1iweLb4zffM70aM9iZvSRD
	SkjE6IF5H3t/vF8Tm2Tqa00eH/VRhbrK0MUCYGYmOAUpsEp0lOSvtRWWGBPI1p7aYx+0GGwZWeJ
	atbNOio6Xb+pzJiNASQ/5Olkw
X-Received: by 2002:a05:620a:400b:b0:8c6:a4f6:ec9c with SMTP id af79cd13be357-8c6f98a23b4mr479033185a.31.1769429021426;
        Mon, 26 Jan 2026 04:03:41 -0800 (PST)
X-Received: by 2002:a05:620a:400b:b0:8c6:a4f6:ec9c with SMTP id af79cd13be357-8c6f98a23b4mr479028485a.31.1769429020783;
        Mon, 26 Jan 2026 04:03:40 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48046fba46dsm344304915e9.0.2026.01.26.04.03.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 04:03:40 -0800 (PST)
Date: Mon, 26 Jan 2026 14:03:38 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
        neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com
Subject: Re: [PATCH v2 6/6] phy: qcom: snps-femto-v2: Fix possible NULL-deref
 on early runtime suspend
Message-ID: <47fqiz47ujlczjxkx2qhnerc5kklz32hgt3cuza6zla67jlv7p@d5pwhejrekvb>
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
 <20260121142827.2583-7-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260121142827.2583-7-loic.poulain@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDEwMyBTYWx0ZWRfX3eV8sarTeTle
 48aqEdwSAjC7lvsb69tdJQvVWhd/O8LchqSO7jvHhdVIouM2AtRiBoP0A4K1U/vmuRa/8jfNKIs
 br5NMUWBF5U0xc0xCum8IG0S/3ZTgIal0KGuxkRDYYUibzfgAm8STr1n53dF8qTEM4uBRSRUiWZ
 fUsvO46aunEvb/sTEd1rceqdoc99oQwdWn7ldyXYUj9ZxIrP56NnZGUHnYENyz7Iu8AMy0br85M
 QVh6QfqV5WL/eYMmc9Z3G/KUkjdWr/BLvuHT8q0pB5qYTUHKJwm1DSUqgkPiouhQU3RaXqnLwgt
 Bi62Wgl3Hw6jmF1KpQNRiv55fBnBmLBR23iGQUeXPr8rVAG+MFbFKkj0thd4AZb8E0U5TWbdr2w
 j0OzcHEiulurvzTdgQabGAt+HtluUK0C/Bhs4+EJhRM+ziSCQKTTdGfxDaIU6ll5RaTbJ3togyQ
 xHrvFzVlVWAeCR592Eg==
X-Authority-Analysis: v=2.4 cv=UqRu9uwB c=1 sm=1 tr=0 ts=6977581e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pxQL0frbaL4a0zJdC2sA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: spcU3MOy6yO_9sorpLeLOY1bxIMsb_Rj
X-Proofpoint-GUID: spcU3MOy6yO_9sorpLeLOY1bxIMsb_Rj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601260103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_040343_177660_025F4988 
X-CRM114-Status: GOOD (  13.49  )
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

On 26-01-21 15:28:27, Loic Poulain wrote:
> Enabling runtime PM before attaching the hsphy instance as driver data
> can lead to a NULL pointer dereference in runtime PM callbacks that
> expect valid driver data. There is a small window where the suspend
> callback may run after PM runtime enabling and before runtime forbid.
> 
> Attach the hsphy instance as driver data before enabling runtime PM to
> prevent NULL pointer dereference in runtime PM callbacks.
> 
> Reorder pm_runtime_enable() and pm_runtime_forbid() to prevent a
> short window where an unnecessary runtime suspend can occur.
> 
> Use the devres-managed version to ensure PM runtime is symmetrically
> disabled during driver removal for proper cleanup.
> 
> Fixes: 0d75f508a9d5 ("phy: qcom-snps: Add runtime suspend and resume handlers")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
