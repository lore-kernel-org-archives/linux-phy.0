Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CC7BE98E10
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 09:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NveE12h2XIl56VDDBQGnu4HNQlkV8NwnI6BsQ0cGr74=; b=j5v99UlXjvn2hp
	cmGgiQEIO5mXhUFUfnWBuCmmYYHRzsu++yUGLUu5Ta1XOXHK2yAyvkandzSrnI9BrKzd7WmlpCWCs
	Zl/SQHsCAsmGke0iK3ChNLpq6ONWvvdZkm0DVc/QcDDB+5VCFBO24XSELJz4Q/BpVUNMW3kCX/QYt
	cabg9EUQK5tRyiH/ncV3HY7eEfXb0z5nLjwnxkXWgK6pqWxM6SH7MBiRs513KkEs7wNhzGYWcTMst
	dpx6ZehE2CJww17MW8v5tZccrKjT6l9KB5mBVGBTMT+TeD0kQBQmNLJaeqTgjzfskup9FSIvuvkvv
	vMjwYgHWSGCEGYgeCtdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSc1-0000000HaIO-0LaN;
	Mon, 23 Feb 2026 09:52:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSby-0000000HaGs-2OLh
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 09:52:19 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MMt64J2001244
	for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 09:52:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uoHMTBb8IpVzr1yOCWWsa13m
	cN23kWHrFMIDsOYWxZQ=; b=PmD/ngZdTMeiHW3/nGgDiCP5TsITHRVqW170k49n
	qWSXXuUYbS8lzGkkHqw9bgWAqISRDGuhZhQoyRZv1qTDjQUUbYzzqt59myo/93GF
	onCixjAKIX8+8sySzi5VattQbfqINFnRRgLHUNx7clQMLpdaK/nQaQ7P9gY3U52y
	grodMrdOfHlwAVjWtcYHxbciZlYTMjr5Tl3NkKC6V1gr4Br6JIw6nFrUPcTdBHuk
	34McvIGWFAyqHrShfNLOXeCuEeUSi2HiZvPJsuW1tRuNXkuS3P/f1BFW92t5EIAJ
	PE4x30UCIh3SEUWArj5TSV5HlG7TtyeyJjOhX6xC/NDI8Q==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wav8m6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 09:52:17 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c6e78c4aa50so2754062a12.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 01:52:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771840337; x=1772445137; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uoHMTBb8IpVzr1yOCWWsa13mcN23kWHrFMIDsOYWxZQ=;
        b=B1G3I8iUb51IVgp8x18eJwJLYy7RjWRh4alyLXfYgTgASP/gA8Fcu+nbB6LzDaeOft
         ohQxTqCl8xCbDsZRxLgKzwJdFCt4sAcGhUj+NM6JK7Kk3Rgpzf/bUNi6Ki2FN5zVSjPW
         XKKvKGND0EqJ0d6MZaM3vcGLkJje8UU+rJjubBZxpVaEsVYr0b+KNXmDNIsqB9hkxbPY
         fChFkrPIGuV922A9yQYP+EtXxlAEZzV2pCXR6MxQx0DJS1a+a67+xy3c5SkoywqPdmeS
         2oyJqx9WDNj3xKgR4oPrdqJ4RGyOegMAiujXFBP1ElLl8FHH7Qs6lt1qACYcd6YBTfTL
         s0gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771840337; x=1772445137;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uoHMTBb8IpVzr1yOCWWsa13mcN23kWHrFMIDsOYWxZQ=;
        b=BUq1/NVUYit3ByBRWLWoUAMuy9WMBfTzZH2imGGHg3dH/Wytbg8lKT66XqTR+crR5q
         yurSAKKWhdigypTC9X6w7WeglrKAGv6mMASibza9R1Gy4cpKXA3WZI4izSV9oigrCg6v
         z3CxsUPZGe+di36XyBgHtIYbC3RdwFzzO4Ai0lHHJFxG6lulC/giQ2UYchOV6U7KKEuO
         PGidZO4dhY6uRTPWBaIA6URIfa7Wq7cMb9bcD4Av0aZx9k0Xx3krfyBY2k7I+SZeNmU7
         7mxfhAzuxxnNLsEcr2+dE9EhpbBZc1/a04Kq/+ODMlCO7YexYVd9n9WDVAW5bMtQkSv9
         ZPSg==
X-Forwarded-Encrypted: i=1; AJvYcCWWv6D1eyB2HIgcVeTgZSpHhfbapdZPryQrHX6K9WCe0udPRMMR9AI188w4h86CSGUSnk0WmiInH7Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YwRd1+qnJN/aQ/YXDLVcC8veLVBAy6Gt1MQVVUNZNKegZ0Ouv7o
	S6wbVfLdKkZNF+cmHCG+tcm1m7eKGbQmw+nendjTGLpMrGc9WXvyt+Kz7DaVIWF8PI48GjOKocQ
	NJr/DOUpjx+dZwbNx6qZ+CfbvlAcu/hnYyZZEkOKOZMzHiCxhE8Bh/5aocX1dJokwZbv1
X-Gm-Gg: AZuq6aKt4BLuPVLy8Xpi0XoaXlAzJGVKFgZTnuBGaFboUR0IxJ1V6ZsOdY4Zb3E43wO
	8BMPQxLkHLkfsl2Hb0RgiQY+o3epSK233wQGuvh3zZcsZstx+okoRcJ+xkalgWfYSnbBaQdqRcJ
	Az/V9tV3GA6Dxqc/peh1ry+rAyMq5jbuPmeVkHZkWPK4Z7ty9tx8iNz4udG++gIUuIpEXwsbAld
	+rI7+6hwVJsV8m0hXHqZuXT+fqyM0d7TRQkKntsRvBNyO+XN6ijOZUm+gWunJQcxwLGh0OMzPLA
	H+55nW402kYvW3jFlKq6XETlyQ+GPFYHZPur5I7AzB2FEEdwRf41QysHtVrIJ8g+1/HOdiDR3B6
	LXX7IdUIKEjQ9IR1RRf7QRWpEldI7j7XiqEc=
X-Received: by 2002:a05:6a21:2d42:b0:38d:b865:3a2e with SMTP id adf61e73a8af0-39545ec839bmr6508775637.25.1771840337210;
        Mon, 23 Feb 2026 01:52:17 -0800 (PST)
X-Received: by 2002:a05:6a21:2d42:b0:38d:b865:3a2e with SMTP id adf61e73a8af0-39545ec839bmr6508755637.25.1771840336687;
        Mon, 23 Feb 2026 01:52:16 -0800 (PST)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70b71a735csm6444453a12.12.2026.02.23.01.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 01:52:16 -0800 (PST)
Date: Mon, 23 Feb 2026 15:22:09 +0530
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
        Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH RFC net-next+ 2/9] net: stmmac: qcom-ethqos: move
 ethqos_set_serdes_speed()
Message-ID: <aZwjSe5zF1+fKoGa@oss.qualcomm.com>
References: <aZcGxDBwfMXHbo_O@shell.armlinux.org.uk>
 <E1vt3UI-0000000A5e2-0Im5@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vt3UI-0000000A5e2-0Im5@rmk-PC.armlinux.org.uk>
X-Authority-Analysis: v=2.4 cv=KJVXzVFo c=1 sm=1 tr=0 ts=699c2352 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=PHq6YzTAAAAA:8 a=EUspDBNiAAAA:8 a=4YUTyhlxiuLjCXpWR_UA:9 a=CjuIK1q_8ugA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=ZKzU8r6zoKMcqsNulkmm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA4NCBTYWx0ZWRfX0x3Z2Vk41gKp
 xaR4NyNqoXTvsbwMPDV/JvKITlhd3s0Ipu+TAitaFVXT01Jun8ZSieP8c/w45g3RF63xVm3tsiu
 VrOy+Yx/vXyExZ3XHoXNqbjnLnVvgeYclpb/MrXKY799tLmyYdQUOskH8a7KMESDHpzKXNm9ZvZ
 tY1RDm4+NXyE1MSkOJkaQAF0H8u3K7/7PPysS1xvCnSiYp4RvugKRRaLkgS/pNaSkkRaRqn9rWn
 XEgIAV0XBHouz6b/6gbnBppzgw7tK/b+kLDQcka0WAWrI9256ns2dVNrebCjKTy/HpQoxHEM5EM
 Pv3ulwZ+SNcUc3tfplnUdvIk11BwcLoWsaL4zJLak9G89OHkIyipC6YrRx2+AnLkojzSL5VQ9Xi
 ikpxuSL/nvWB9xF3s2qevuZBcY++tTZUfpgzObWu/bEcOT6gjCDjT+isPCFbR2Z+50WAxk6d6mI
 D04amXuWzfYZaUA+tDg==
X-Proofpoint-ORIG-GUID: Spacrvem7lnpQGJDiiJGJ63IV5_gcKCn
X-Proofpoint-GUID: Spacrvem7lnpQGJDiiJGJ63IV5_gcKCn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1015 spamscore=0 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_015218_607744_FB6B5F4A 
X-CRM114-Status: GOOD (  12.52  )
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

On Thu, Feb 19, 2026 at 12:50:34PM +0000, Russell King (Oracle) wrote:
> Combine ethqos_set_serdes_speed() with ethqos_mac_finish_serdes() to
> simplify the code.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---
>  .../stmicro/stmmac/dwmac-qcom-ethqos.c        | 22 +++++++++----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 

Reviewed-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>

	Ayaan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
