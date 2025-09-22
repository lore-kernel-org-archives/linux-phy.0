Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDDA2CAC592
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 09:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ELcJdrziKDNbigBJTGJT7eIhN6YAzS60zQi2iPvQags=; b=L66eeb/UX1ItQ5
	ZLiGMpW1QZxEiv9QDGb7zYIqS7x/kcKwu0fkVzKt1xXHK3ByJGL8r26lzTvLPqupP+aSLGSdzhKBa
	gXafrstwsG78Ny5YPGAjfod83hMbjyJayUxgJY/Zr/NBvPsOCS+OOYTyBAARrhjfQNaYddTO9ZegC
	KDwhA9hJd24/Y5hl//8RbK3JGgKCdugmSCehI0ZJ7oulJsrbefe7BY+bQ2fww5wtRD8beTTajWdoA
	CO0sbIX4Bb4DWYOuCjlj2rzuWUYPm3U1qwZT5vT6bM+3aI7hDjyAwHVeW3FmiLNqncUwclxLijfyo
	wb+zCy/q5MXnvjxSYEig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0d1u-00000009uib-2GBS;
	Mon, 22 Sep 2025 09:40:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0d1s-00000009uhA-0c66
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 09:40:17 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M92rdk001392
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 09:40:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7YluqLjFkeDBsYKSBhPJwBbp0COj/3zoNrL6kINO3I8=; b=pXKZRq/9CE6rRZBi
	Jky4PBi9rEiRdx/UtJ49BKRg39I3qn6KPqZ7JbDsFC+VZ5u7i96zjwhIbWjnyQJw
	OKsskdpkAPiWwJHqpK9W45VCgi4gIRGtbVgyDRaDxLwxnr5WAq+nRDZGKl8EeASH
	92AWXuxGg6RRhILFrJ1caqk5iyvkZ2PgVam+dVTzcPEsXwVe4bUhInEGxOHLoVdR
	VmGbjCkCkPnH+/ksnlrW22jnvtqDPm+Rfzp89mL3AfjDsEnmYC/5C77WAgu1LmOi
	ASjDpqPWKy7lis9fVDzCdoD0iX+5MrkGNfx8xG9xY2miUqdr4soYidhBHd7YcbBD
	U3pDaw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499mn7c92q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 09:40:15 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b793b04fe0so80180311cf.3
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 02:40:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758534007; x=1759138807;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7YluqLjFkeDBsYKSBhPJwBbp0COj/3zoNrL6kINO3I8=;
        b=QmVByY6hygimaTI1TSQGLr+Z4h9CZoWt7vxrelzdcg6Q4RNmRlonQ7GPjgbmpXl/WT
         jaj+Y7bkCOkNzSJgqUNfCGgIJWE+Te8p0LtNtyn9dQ0LaTWGZZiucbGY1epJhf3ovbLX
         mrgN4+D88GQZaUgMsX3H9o0PgM+i796vA3VMdXX5GeZ++d3/DFVCxpg7JGqvI+KWIkuN
         FnpnvB8yhVSGMwVaVrlXZ1T2zeW6yQVbESuUVg28KpwgsEKaziJP2OCg6NYwoHRzGF6m
         m5DExb9LynK8mrh4iEyCrdJylmWIMNMeKSZ7K4QpVYhlOIdn8TuRKYdO29d8cEwh0NTU
         M2YA==
X-Forwarded-Encrypted: i=1; AJvYcCUsJuSBq85DV7r1OG9+Hrk60+orMi8H0xWHCvPIscKl1IZ5mJmpSwDSKcZUZQc6Hwf+KstMv+k653Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrRIah2cp95trNppG2Wocl9oxmK+KJ7drQQA99w2LpSstwNywS
	T5WCk7MFKddG7DQZlZRQnZTt5KofU9IS4pr7gKOJrU7LNFpwGVCWzfq+BlzDfdKZCxTewJOXjIU
	rqfCjrFDlIbs5dHb8HawW1fVex1wDAO306USvCFzRw4rUEmSu9p9qD072ff7CjFd4+fHL
X-Gm-Gg: ASbGnctQivHY+hb9EeUAAMSQheg5qJ2wkvWE5dSAXhpYKzlawmRFoN1+ds7RzuElgKx
	nVNYfzwrQNaw0YFUheSNVfrHR2FNd6eJzrqlC9xG9hKR00lcPwzxtN7bRtUuRU5QhJdKcJjbaqs
	YzMfNIZyVCrvOwLoUTsWDDkKuPO0u8eHn1mNyVSlwCY1VFuFf4FUu08TBMeFcYJ3gFJFd7aOlPI
	ARDn6LV6WyaXQBgfehZRvpML7SugIA+WLprDvkYrEBN0ckYQxCVDafLt5ZbtSngAbWQ6zKpdWDG
	nHuIaZVAW1+moZaGoUPPKojtqa5hu8JbzLi1Dwpn4FH24m7kmcKPtBd+HvXfIdoTaUyyftchEBV
	U9OpjJ3OQ6RiwXyZ3bHCFLgDUtoSVW2VNto1+OnDLZPJS7AXrOP3s
X-Received: by 2002:a05:622a:3cb:b0:4bd:8a70:8419 with SMTP id d75a77b69052e-4c0740771efmr132175851cf.49.1758534006523;
        Mon, 22 Sep 2025 02:40:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHHPdl7qbXwWAyMzAb2xrKkqm9pTpnhem1oin/ZkSbUrYmV5Vp09P9ycfD9quaP9yIYnQ94uw==
X-Received: by 2002:a05:622a:3cb:b0:4bd:8a70:8419 with SMTP id d75a77b69052e-4c0740771efmr132175461cf.49.1758534005900;
        Mon, 22 Sep 2025 02:40:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57e06875b8dsm981204e87.2.2025.09.22.02.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 02:40:05 -0700 (PDT)
Date: Mon, 22 Sep 2025 12:40:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
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
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v5 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
Message-ID: <ysxjabaah6rcbsjlreteo32zdljjcd547vgqeoxototwicjj74@rwovxeg6rnli>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
 <z3phuuokrhonbukct2siz3ujear5ymtnoviea2epxzvjdmsvkj@w4puf4c44tmk>
 <83b5a265-1c5f-49f5-a89e-22f466df3304@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83b5a265-1c5f-49f5-a89e-22f466df3304@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzMyBTYWx0ZWRfX7GEQPvDWmbkB
 lu0ueBsbFxiBnYYsWEte9xf8PuEi/aZDXPuhK1xgjS4U7fJMyRbbU4+uXKcdR2swZl1Hq9MWy2O
 VOdE8Jphht6onEJqXDCMNt0nGDDGhSZg+ypsp0cRX5sjePesqQxATPmtnb7JvkNf/BdtGB9iM4+
 kmUIwOMPbT/Hq8kbUder/g7+h4GRIjV/2d77uSr+dg6rE6A/oXSpc2mQc+Fs0agKAXVNSq07JPP
 knQfPm60effvaWZZ9g6L6bb0l0nX+zx/Et61ScsDgVXDvHmxOpCOhZW/E6030+JU5w160d+5Avm
 DCRdjZC0PhATCqnlWtEYTEEfIVJ1gEhvGCDYZQRUoCvlxXYpqXj329hDnM1YIn2TU0Fqn/preTy
 8RKvkCVN
X-Proofpoint-GUID: GrxZpR4WjNPbuZjJpDkY3lkujS3ZmbLG
X-Proofpoint-ORIG-GUID: GrxZpR4WjNPbuZjJpDkY3lkujS3ZmbLG
X-Authority-Analysis: v=2.4 cv=EZrIQOmC c=1 sm=1 tr=0 ts=68d1197f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=zhdrUoIqCuD_tm7jGOwA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 suspectscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_024016_305478_D8020F66 
X-CRM114-Status: GOOD (  21.24  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Sep 22, 2025 at 04:04:42PM +0800, Xiangxu Yin wrote:
> =

> On 9/20/2025 12:45 AM, Dmitry Baryshkov wrote:
> > On Fri, Sep 19, 2025 at 10:24:22PM +0800, Xiangxu Yin wrote:
> >> Move resets to qmp_phy_cfg for per-PHY customization. Keep legacy DT
> >> path on the old hardcoded list; non-legacy path uses cfg->reset_list.
> > Why? Start your commit messages with the description of the issue that
> > you are trying to solve.
> =

> =

> The original reset list only works for USB-only PHYs. USB3DP PHYs need di=
fferent
> reset names like "dp_phy", so they use a separate list. Moving resets to
> qmp_phy_cfg enables per-PHY config without special-case logic in DT parsi=
ng.
> I will update commit msg with issue=A0description.
> =

> Or do you suggest using (offs->dp_serdes !=3D 0) to choose the reset list=
 instead
> using new attributes?

You can't because othe DP PHYs supported by this driver will use 3
resets: phy, phy_phy and dp_phy.

> =

> =

> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 18 +++++++++++++++---
> >>  1 file changed, 15 insertions(+), 3 deletions(-)
> >>

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
