Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA1E8C88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 15:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1oVIwwdyV5zf3T0qMpaoYoj+eJtmqx9kJ8qMEpXQW0=; b=TQSCQpcVs1ehtN
	QonCou3txdOGsjSj5aPtoqU/JsdHhFUPm1qPdznlY2mQnIULDxOqIxD7Dy4TnbGAHl3dhkRj89pL2
	HXGDnfubN57vtIkWSkfIxeXwNqSbH6UWDswl/FQog2mZ/Oyywu9tSsB39M+nkNbdH0AxPl7j2vh5X
	M1oDuXa8C7DbHRjbT0b3J/Xw5S4PKqBUEgUjvTIBM5Wu79/kwtno6a22oR9h8Os1Z9EEe4jf83/19
	AiyD0PjkazNUjkZAok9cE79kXjMq9INqD+NRtE6z/eOCydWmCXcIXDXojQU33IQ5RNPMcPSukuTX1
	3i5M3XJ+4fn49gnZQcQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7EEZ-0000000Bj26-1bFu;
	Thu, 17 Sep 2026 15:41:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7EEV-0000000Bj13-419x
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 15:41:10 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68HDiUwD2974879
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 15:41:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kv+f2O5HtP2UyzQFqxgl0Ck7
	X1yB8VDtNQPrqEOFNsU=; b=KGKB7onLVmzH2nA9sBMm60L5L8sxKuiGItypEMRi
	mIBVtN6RcDV71YuJ3n9O56uxKryNptHQN7FmDKTrDePq4VI+GVvEBAcubco4eDcj
	h3mMQXaFEQ61IUTZalhGat6QW8GVeALeNR2L3vsc+umk8EmhCs0Ez/mRClKEVRJU
	oQ1gj0G3tBSWWR7EL1/cuRHsHQjH6BERl6WsF25FxUrvJqia3bBWFWMyNSOk1GGV
	O3gMVtlUBChNqh/07gLFswwJi0VvNUvSCaPyITb+Jv6eNRiog8podyT0Ie5gt4U7
	tKzqyFNElAqLPR8s0gJdtmgfsDauX29PQ3UbcnW47j0t7w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4grdd6hrk5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 15:41:07 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-939a6937513so144007285a.3
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 08:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789659666; x=1790264466; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=kv+f2O5HtP2UyzQFqxgl0Ck7X1yB8VDtNQPrqEOFNsU=;
        b=ZuXi3ENITk20+ou3D1sSO5lxoSnIrv+2xxjaKOU3uqsg5sp8YjbIN9wj6GB2hbvHQB
         IP1BkG8Fn+a9lcfxHFr0JkpecCxXMQEOJu4nlVxqObUCIgHi71+3eL8i4NDQFUrj7XMI
         i/5Ss9uNCj4gI+Ww4qqbQeUyvqUnI1NHHHqTjjz0WLYerO6FxaBSaAqnS0RMmUN/1oGD
         sG1q8Ry6e1bElmjxeDPdvUwvPrpJeKkr1c26F/dgcMtXxuObnDmCHFGnZAxbu+pQqPVu
         4El6N1PJC+OjQld9fV1givQi62aqFl2XA6+zev++o3mSE5OjtoNst929wHZgiGvDf27j
         /n0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789659666; x=1790264466;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kv+f2O5HtP2UyzQFqxgl0Ck7X1yB8VDtNQPrqEOFNsU=;
        b=WopTg/8vi6kbanBaX4H/R/7EFzAOBBlHC05a4y6qBYemXqKfRPQ2XqobjZdu0IRpkO
         s5vvtNtr8C78UyzL9cTejrbI307egIh3UFSjWKTF9AFGHxKcrwLM9+X8aMWAkIpD9vdb
         jihLvo5v4afaLNE9UuNVnbI51tIywp2J88WOBvKUbjFFpbdKrPCG5c15c0dAebf5ukUq
         zY6ANdDhM1tGMJj5TMFLBOU1Df/4PkKAjWj3bq8K5IJt5sjQYtuMdx/i01pmdeeV9Crk
         Ga8kUHKU1gS+fDVJBJJke7L5cSNcmKJ1NvPUnH+0xkyQOApSXjDgoxMtD7MOMqQpzoa6
         5E6g==
X-Forwarded-Encrypted: i=1; AKwUvBxy3SRnbyoy2ORbpWhccGXvzJ8doNFhhRbDvwBTRs3P/NEwKDZMptT3ZrjEOPZaNKYFRxE0/lSlVaU=@lists.infradead.org
X-Gm-Message-State: AFuF++mWOBgdsRGad7sj1qAQGtMkYcYPjVRbRiuCl2CSWvqgMTQIcQxr
	JHi7WXTyt7d8Iy+c2kyJYbsIwxgoNjjm/ZCO1dd1xoMcHNKfAFfkGas0QZfnJeZj9o1AAbdCBrY
	dyYZpDcbUnvTGfVf2xCWkW7K1f5tAk1gna3nrQb45MySCE/HBxe/Dw1C1uoTbYvCbaDoS
X-Gm-Gg: AYBFou3fKpWVbBZf8TxBAOzZafAQNNndKLU+JJAzVOgw1JdYTcyk1ZE8Q3lgYX9v+K3
	V74ZMdpWeXinQ+q4S+3xlOWSJz1F8DMnURaeZc2VWcmoGpzQurzTTPtNFdx+lWHNLGZAgQDGIAp
	D3xbP0r1xna0PXzdyajmeS+IDYFk71fpcL+sR0a7FZnMUxHOQ1nF4r3dg+/jUt6Xee9G4+WQiZF
	CJCX4esstNXr6oPhHqf5kvgoR2m3g1NF4bD0d3yNkaxCDkE5+34t8zbeJ/beyg671zqTlUNCr5L
	IVtepCG1a81nQBJJtinD2J4hHdejV5qbhju62ZusiBTPG9x0MyKbTBmGn0p40BEwgQME52uchRs
	OmRbgrhGxuyhb/A==
X-Received: by 2002:a05:620a:4621:b0:939:deae:8ca1 with SMTP id af79cd13be357-93bb793775cmr1229080185a.44.1789659666298;
        Thu, 17 Sep 2026 08:41:06 -0700 (PDT)
X-Received: by 2002:a05:620a:4621:b0:939:deae:8ca1 with SMTP id af79cd13be357-93bb793775cmr1229075285a.44.1789659665701;
        Thu, 17 Sep 2026 08:41:05 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.232])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fbd24034esm101548365e9.15.2026.09.17.08.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 08:41:04 -0700 (PDT)
Date: Thu, 17 Sep 2026 18:41:02 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: jic23@kernel.org, sboyd@kernel.org, dlechner@baylibre.com,
        nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
        gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
        neil.armstrong@linaro.org, sre@kernel.org, krzk@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
        melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
        ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
        luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com,
        mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-pm@vger.kernel.org, kernel@collabora.com,
        Andy Shevchenko <andriy.shevchenko@intel.com>
Subject: Re: [PATCH v13 04/12] spmi: Remove unneeded goto in
 spmi_device_add() error path
Message-ID: <7xf6fvsmcpqjpkto33g6o63ejagcbyitoaetvxww6pdijirbkn@etvrh2weic3p>
References: <20260721093626.96264-1-angelogioacchino.delregno@collabora.com>
 <20260721093626.96264-5-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260721093626.96264-5-angelogioacchino.delregno@collabora.com>
X-Proofpoint-GUID: dLzUsV-VZz-bBXnwTmdKO8O0GlDYJfqB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDIyMiBTYWx0ZWRfXxmX53iYHWyW7
 zwiLXY+HT+7tZ3ZfPVboSHlhW+0Bl5Y8GfBxBTRIeKdkpu9OclduerbtPxZwJXzxdaLE7ZQ0iZn
 TLWIR5kxsf++0xXNvKdh8mSF4OOjtMtqWE4AqdHTjCJkAKU83zDKA5Ip2UDU9THa2JYZ0yb0WuM
 4d/gZdxLIRZ0HNa6YogKXVBehOJC84aPhJtIIzg34c5WfMDdH6jePXNp9mv10JW7Dx3vkEOSwPA
 /MD5TPER2yO8ENyHzHTJAQBVueAPhQltZU2O1JXv5AjEBgfzJVimEFoY2PaSJ3j9n38hqz8aJhF
 zELWMYLQEYd4dc1V71zadtBoh+815HGuso+i7sRUcfvANSQxufH9CZkxrH33x5RtJyp9ryp7RRX
 Lu15IhvKpzzdfYrG+v+gSuCXFentYuV1l/3vDdQPQyOsgRFfmAYtTGTXIir3sk/RzdRftV7x2yH
 gcggY6jUCiwShAWMzAw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDIyMiBTYWx0ZWRfX+Z9Ah4KFUpxy
 +dJYllCQ5aOLtl8CHnPOiwd6h9yLvqIe0SgQ4D8FRH2szkPcvoMcUk7TU720nSaeFlhXdXgSVRr
 sYb+vP0kZCLd+U9vo1RuBNVG7N2LISk=
X-Authority-Analysis: v=2.4 cv=GeOCDgXL c=1 sm=1 tr=0 ts=6aac0a13 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=po8fGBi+ks8MzcVQGuqtFQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=QyXUC8HyAAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8
 a=RPqXdwRs98PbUg5oA2AA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: dLzUsV-VZz-bBXnwTmdKO8O0GlDYJfqB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-17_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609170222
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_084108_000009_3FB58530 
X-CRM114-Status: GOOD (  11.75  )
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

On 26-07-21 11:36:18, AngeloGioacchino Del Regno wrote:
> If any error happens during device_add() just return inside of the
> conditional, as the goto path doesn't do anything else if not just
> returning.
> 
> While at it, to improve readability, also change this function to
> explicitly return 0 (for success) at the end.
> 
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
