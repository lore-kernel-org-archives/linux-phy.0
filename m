Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 737C4CE7B13
	for <linux-phy@archiver.kernel.org>; Fri, 14 Nov 2025 14:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gqqWLtgz6L+QXBezORyi5au4PE2Cqesl3gGm5eJaRnM=; b=vp7uWDMjBK0tYq
	g4RlNvJFOTy09FvbqNunKd4mNs4bWwnhfkE19aZYniXC2Z0wiFiQ8hbZ2938VYKsEMFLunnYvh2TT
	0ZNql1sHtrpAymQE00SongZ80GTz6kY8Bpl9Q3GkAw5uayQVKq36ujY158Ksdis19ndZFYTmgc2mg
	3cDWDZGtpk6j8aG4RtI6BjFh7e3pWYqzqkNuYCwvat/ahpgJc9kxvkQWFkA9vjLbOTrAK8xBuMZtj
	gUqS9iFB91xOMMgkhxxUg8/VLB3083gzBN0uM/RkGNDe897AyDdDu4vvo6k0DtezBy0KfJelkFMdN
	4kkBr3gxsqTAmtZ2vEAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJulI-0000000CMgZ-09fH;
	Fri, 14 Nov 2025 14:26:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJulE-0000000CMfw-2yGI
	for linux-phy@lists.infradead.org;
	Fri, 14 Nov 2025 14:26:51 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8Ko031423690
	for <linux-phy@lists.infradead.org>; Fri, 14 Nov 2025 14:26:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QUtZTR/LX8xkNad3zOXNntb+ZjNzmULI6QNHH4u1910=; b=OqL1QxTFd7Rl8e/v
	ayPe7X835uwAcXp2YY1fUtP6/80nOY/RlY5caWAgKFOAjhtAMtT3UWJaPiNmiDE3
	ND8AdAvjes3opZknWLkwM/U1BmZ1lMOfp57q7osKudbRYg4vgF9FjzS1jM/tWiK+
	wYqC3vMZcTzfT819kODmY2WjR4tSz87R5KIiFZm5xHTFifkGAmdbn5OSjm3NyUJ8
	ejz4AcbdQlcEVxlre/zDX3u/3OFjnrMO9OuLzhnUTCJpdCa83nSxs1XlZVx8qUB3
	yCugXlzowM6Uvvu0tKYAxgDVL/MwX7+R2jJ3fuD7XLrQ3sZQApmsxdi76hXQ+JKp
	AamNvA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9g2djb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 14 Nov 2025 14:26:47 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e8984d8833so88466631cf.0
        for <linux-phy@lists.infradead.org>; Fri, 14 Nov 2025 06:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763130407; x=1763735207; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QUtZTR/LX8xkNad3zOXNntb+ZjNzmULI6QNHH4u1910=;
        b=WrdGABEBzZo80+/FIi3fykH4X88fkP7S88gzYWmHJEnCjk1bJ8X6uoaCpg7/YgM9mU
         nS4fYJh8TV5DqVTfHaZhdMifcXiEnOxxJV7GUkq8uyewnjVMqhLjigLjG1RluZWNiwkB
         39OgWzZUDu+e4NpyOloB6hV+IDt7RVpApsmCxVgCpl7S3LfE9LXLK+JSudWWnCu7kGNM
         YR+4X9FRGK+oGEoNpAGMdCpxxEsCleR/XpEcetNTyUxvFTM7Jx1QWRhJxwTKn/uPGcf9
         xkHPSdRkJNTSzbrWw8hm+ZbbIkCEYf7+ZAavu7DRljDU7gqFOe4GVcESm/J/yA9Q09Gq
         35Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763130407; x=1763735207;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QUtZTR/LX8xkNad3zOXNntb+ZjNzmULI6QNHH4u1910=;
        b=Gqr1VvbxUu5AomWB+YM/O2+U042lJyXxePtS9eaRPArgB8W0Nerhx9cth+q62Kc/+L
         hXnnLeygQAduvrLpyAQakaNhkIu/McKxMLqI66zrc8lvllUf+uvNqujuX+d9tzuoA+RD
         pKMoAcM86wOQRsBgBwghJp5a+NCQmWlJJtr4aeW9UtjWYBTdjGs3p6AsYjdqcYR5JEef
         AUW83xX85NUk6hSu+/6PrNdmZOUEbVJdLdlIlxvkusjkilKTApbxoBq0AeMmCjBoUFqJ
         bO6EiDN3sxyL0k+JWK+kTHxrsmz5i1/s4IP8q9lLhY1pLeCFFvr8GABQjeSSVejNs/EA
         S66Q==
X-Forwarded-Encrypted: i=1; AJvYcCXQuSAXa3Al3ugnXYXm2lWJWbh3oG71frYxLpSqWXkkJsSnxNH8h0d0vORfVnK6JtQf2sKGUUO6pyI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxB15XhME5cMjcriyE+2bj4iytWGtVgZjfJkynblAKW19qYnT6q
	OhbG58/uSbCcm50ZprTSyvzShnTntTU1ygTfWgCLW3LM+VB9hxKV/SxrUsMq8M9/FGM62UywOJd
	36o+Hk4tnk3sXFdqXI1KNyZWiZyQL19KRVJ48g2P4b+NYkE8A/tga0XmzrGMPKuCk3yWQ
X-Gm-Gg: ASbGnctCrrTjlenLk9tQq8m4AGsJRNpuKSD0VgdzYbK9666cZgGGU1/97KOGP69rf6a
	u9QtHSYCyhQAwOYlGL9jL8i/COZwRScrOWuv0KnrbjwYDZolF9S6zFvH21YVjUNLvyrQHHi9Zkx
	rewmoqW8uKGSnOrmRvKNbE3T/HOpELjWxgB29DSm+AE1XuvgjW5bx6S7rbzUshRLw/1Ape3c1a/
	F9cnhjIRnZLW4P0gbpvwidKVOCeFn2V75GKpRiPYl1XOA1xqE/FrzuraAdIrNAm7Qjo7H3IvGH8
	oEhZ153SbUrPwtRKR2ladERYQInpD0ZaWAJZZrbU3aqjsF2VO3sLClKkWEAwm9nTFtSBq75KfVT
	CMVaN2Dk3sUtThmzEwoH+NEvI6IxMB0U/W+qH0CRoKRCdGyfxkjAnNWDb+FB0GK2vE9+D13iITc
	/QpJOx8V2x+O7S
X-Received: by 2002:a05:622a:58c:b0:4e8:a332:ba93 with SMTP id d75a77b69052e-4edf2142ac7mr47937001cf.76.1763130406165;
        Fri, 14 Nov 2025 06:26:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE7ZNsO/1TvO1h0/niYYuelt3zWYP6cQK//e3LNf7oVm47FCgH3fT1GElj2eHRDmKTUxYXD0w==
X-Received: by 2002:a05:622a:58c:b0:4e8:a332:ba93 with SMTP id d75a77b69052e-4edf2142ac7mr47936021cf.76.1763130404998;
        Fri, 14 Nov 2025 06:26:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9cee0cabsm10318821fa.40.2025.11.14.06.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 06:26:44 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v7 00/14] Add DisplayPort support for QCS615 platform
Date: Fri, 14 Nov 2025 16:26:35 +0200
Message-ID: <176312947282.1737000.4785941412056554129.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=L+AQguT8 c=1 sm=1 tr=0 ts=69173c27 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=e5mUnYsNAAAA:8 a=BS4b-AKSgWLh6_M-HIAA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDExNiBTYWx0ZWRfX5C592Adtqi13
 WW3NbrfvET7GWEk4oJ09HXhQPvvJZzB92bgFgZdw9ntMaSsHQM+Fe1h9ErFdiP5+uJunnt2zEGc
 HPf2o5y5ySZQkis6fHsaBF5UfO3iXxCMeMiZmjd5mWEAxpsbEJ+j7MYn3cB5U/04v+z16+8aYvh
 zajSwfAmrbz/HlDGY8T1X8ukY7Op5ikphRBT+R0fcn8DjCl9FCNkQWtI2glZ22m7a4OGfWdd2/3
 /UHH+hjJH0HbIYuyIAQkyHjZTcoN2u5dH/OmaPvqqtt/GGGDIkEbKKCUPbFCCPT4EYKB5PJQS9R
 lO5q5YzqYdI6UWqBxEaAPeMX2jwztMpX8BowHHAIT9juEzZDG4NToXdadPdoazY4WA1ikZBJ2SB
 UdhztOy6wuo7eKn5HHQl7duYwdpP/Q==
X-Proofpoint-ORIG-GUID: Xx9luRaFIbKFR4StIjODzWr2ElHVDadk
X-Proofpoint-GUID: Xx9luRaFIbKFR4StIjODzWr2ElHVDadk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_062648_891126_7AB5AB1E 
X-CRM114-Status: GOOD (  11.89  )
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

On Fri, 26 Sep 2025 15:25:36 +0800, Xiangxu Yin wrote:
> This series aims to extend the USB-C PHY to support DP mode and enable
> DisplayPort on the Qualcomm QCS615 platform.
> 
> The devicetree modification for DisplayPort on QCS615 will be provided
> in a future patch.
> 
> 
> [...]

Applied to msm-next, thanks!

[13/14] drm/msm/dp: move link-specific parsing from dp_panel to dp_link
        https://gitlab.freedesktop.org/lumag/msm/-/commit/866aad5cfb55
[14/14] drm/msm/dp: Add support for lane mapping configuration
        https://gitlab.freedesktop.org/lumag/msm/-/commit/36d978701203

Best regards,
-- 
With best wishes
Dmitry



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
