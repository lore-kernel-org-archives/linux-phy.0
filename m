Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B018E98DFF
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 09:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RK5FMTYz/b1El+zrM3mYN32JZjx5tHKoEGKBhZQCfUk=; b=U4Fm5F1xIMmAiw
	mJ1pDzKeIo5UPoaMFWcNM3gENdktG5+f/WipZXbIj1FZGa29t1fc/oYc7U6xs24U27dx0+1fA2sWy
	5jkMn2R/qepGBChEQ/k8ylChO6dJDbVdjRFO1OnB7ne3yQ8KGivDoBWUfV5dg02gnOEgO+76biYqx
	UJew4RurHUXtXZB7MSNJhiVif8s58IDHMkSVioFTYr+Eg0CrYc76LRcngWN66isL7LUc+pHjK7gZN
	5YpYXnSmeli/Ys/gYaDeRXjtD/nSf6R6r5/jQFxHfVdZCdEaxJp/6XZ/mY6G6VPFhlQpQxo0zjnOj
	jDJWs3FsXGGAxd53QEMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSUd-0000000HYzs-2uKe;
	Mon, 23 Feb 2026 09:44:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSUa-0000000HYyc-2ajC
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 09:44:41 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MKkVEa2240014
	for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 09:44:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=s5Q1vewngJBr91qKkgV5B9pJ
	GBBUeF9wD7BUkTBzUfE=; b=n2MBqtR7gZ7QAYFzUxcvE7xcMUV1W5cLFgQKuEv5
	1KDQfXbHtb35D9yelPJZHf5693s843xj8H87QMweMacHIo/3UJikgZAf53lPxm0u
	Uoj3QwgVpAzYjQh8q09VaLvcHESPeyzvQgkswD1htJ0XsC1MYTRZtVcMTGtamxK7
	2eXX5BJXYJtZGg0KyXsjcgpsarZm/ww0OsJQ+RUQJtEIp8S8T5Mjq2qoHrg6tKeH
	kyyCNKRuFNaR7LVHRvOvuItfjYsEI7O7JOXvFHjvd7kXn5TC0/2v7phbDFfP8ygD
	PXA5l8ZHheUPn17OeqJkIn8OROqOTenQScspNmE1Yrqx5w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wyv6pp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 09:44:39 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a944e6336eso289225835ad.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 01:44:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771839879; x=1772444679; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=s5Q1vewngJBr91qKkgV5B9pJGBBUeF9wD7BUkTBzUfE=;
        b=SLXjA8utLDot2Nu8Wo5tNswFiA8M7jzFGZLKYneqZuosrXGWZ4hm5ExCtd2GTUv6rM
         bS6dDtCyy2dgSccxRGVjiDoerVITJseAngGSGZoRBQvZ5BuacZmKQkX3FwdMX9uYVWuZ
         4NBF0pSWHzTeafoGKu4ZHPhJfr/QqmRMM8QSZZLD0WsmPudfIe+DVvh6mGOun2zmNud0
         vY19N/qM5uhis6b9l91R4K+kQRz7XnmWinSRuPTv7WBCoIEm73IWbgdtMZvNMM1LLh1z
         d6Ls2NuvCccIWzBHbtvA7F7S7n5U8suMJyEXtgB+VSUS0901Wf7iMFIuv7fkgy2UynEE
         L0Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771839879; x=1772444679;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s5Q1vewngJBr91qKkgV5B9pJGBBUeF9wD7BUkTBzUfE=;
        b=ScrFPy3CAQe7xayPyAW86Q8xFRlPoU5j6/oL3uW5Ov1p1kop9nxAsZ5Va0XneLNgev
         XrLuv4Adee90+bwi3WjjFrVmSzjyltLyjvyDD6gSSFofgLo/4nJKcQKik/rH8ODp3h5v
         cOduCpgLlRVo9nNHtUa9sW+sQ4Q6rSMdKareZfZLsvF++koZKDkC/kq6RjJ7nTe5LVUH
         4xU5TSZJt3bvb50C4jPMPyHFSuF+nr60Cy3fPMudaf/fltMoWMseo/vjgDAn/jqghZaU
         +AXPYDCud/vWgAGwVBLvqZCwjsbULhItGGG3p6w1+hThOeLIZnxRXawJMovARkz+5xgm
         F+mw==
X-Forwarded-Encrypted: i=1; AJvYcCUIJRR/C9t97gF2ROGFxY9dw3zHMCwX110Tv4jJeUskZNLyBi3vzVY5qOmsjfKPKDgCAIa0CLTOqM0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwOxhb410gUCOLa+B7ZhuEDs+EkPRoXd6aRLazq10bmxe9NmQL1
	4B7xz1Uczpusxr0gB96YU74DDTOthk8AAlv42y38bIuQpkjF8k5Uw8mgJ9Ig/Gmetc7uCHqhf5v
	mdqy4epElwDE6FwV9VTdzWYZWxsxSdmZiHmEkIXEBvgh6zqpsGIcQCj5LUGKD+9H6Hk1K
X-Gm-Gg: ATEYQzw4T5tMxGUHvAE3PYiuOnwmoWDXvKF3G3GWIVJWuYB88J9cgr4DIImfHAlM/fQ
	+REN9q0j3P9DQgawGxtoHdAWMQV6Y5I8UeqoPjzcVrx9MJzkk0IcVVWWURID/FGSLL2AUzN9LJp
	OVtz195iaD+0LP/JVPObrwA5coTPouR5u1ANXhtHQLRQE076SnMHoQzjN6muciQGEvUY9i3fZbQ
	/quuJaycZ9qXuguPbY2hiMg4SdDqnQvDSJmO8BAM1dXGTuOXZg5WwsWewSTzAAedHtldy0KAGvV
	KbzmAJVdmzaiFKBh/yDTGofMT8AJGd55+nugMCYQYrRG15RqBBOs6hTkQqV20i5Y3bBa1YXBxGR
	OwyzFetyxihOFbcxK5BwlZio/BhOvuUggjJ0=
X-Received: by 2002:a17:903:1aa8:b0:2aa:d1e1:29d5 with SMTP id d9443c01a7336-2ad74556f97mr80694045ad.50.1771839879045;
        Mon, 23 Feb 2026 01:44:39 -0800 (PST)
X-Received: by 2002:a17:903:1aa8:b0:2aa:d1e1:29d5 with SMTP id d9443c01a7336-2ad74556f97mr80693685ad.50.1771839878545;
        Mon, 23 Feb 2026 01:44:38 -0800 (PST)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74e34247sm63334265ad.6.2026.02.23.01.44.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 01:44:38 -0800 (PST)
Date: Mon, 23 Feb 2026 15:14:31 +0530
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
Subject: Re: [PATCH RFC net-next+ 4/9] net: stmmac: qcom-ethqos: convert to
 use phy_set_mode_ext()
Message-ID: <aZwhfzkk740kUegR@oss.qualcomm.com>
References: <aZcGxDBwfMXHbo_O@shell.armlinux.org.uk>
 <E1vt3US-0000000A5eE-1RHM@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vt3US-0000000A5eE-1RHM@rmk-PC.armlinux.org.uk>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA4NCBTYWx0ZWRfX0QbGTgF33lk8
 Ad7uBeIX+5PsuH/pbEncOu+3aBYWjyYue4eIp8D0Me/uq/ynNWiRIs6CKbfuL8mBoekFmjD8Xht
 RiJ/3g19njOY/1Aae/8GvkbvDlBH36xVRtXhYmGJg52KXW5JSUXfe142W2Ot+k3Od804NYNkRLa
 dVk9/gD/RY2CQF68ktNiLgvHrZaBhq0107FdwiQNIhkgHR2VNgYM2a4Y+v/u2f+6l/++KyVEJ3Q
 YL4uYqoRnEM3cu1ZCYA5QSVUuB1PuJviFGyqGEJy0Y6gndIXbmKav4NAasECPEOVgDyahRzHABX
 jGvYnXj6QlMTd4fnWkugUHql8w9N4b/ACjdapoT84lWy0Ya9svu6dQdnkVpWnBdyNUAMOJf4V7q
 up9zBmLDDTKeDY/bzL5hh4OtTiSkBALw3G9JMr8t071xFU+14ENAD/2z/Hxf+riuD4OCaiqlh8x
 Ayf3U54xgW4XahURmrA==
X-Authority-Analysis: v=2.4 cv=UO/Q3Sfy c=1 sm=1 tr=0 ts=699c2187 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=McwRrj-fpISi4v25ROEA:9 a=CjuIK1q_8ugA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 3qdqMCxmXlGX_e3t84i049bM2dn6QGec
X-Proofpoint-ORIG-GUID: 3qdqMCxmXlGX_e3t84i049bM2dn6QGec
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_014440_652571_D8DBA4F6 
X-CRM114-Status: GOOD (  13.94  )
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

Hi Russell,
On Thu, Feb 19, 2026 at 12:50:44PM +0000, Russell King (Oracle) wrote:
> @@ -675,20 +676,16 @@ static int ethqos_mac_finish_serdes(struct net_device *ndev, void *priv,
>  				    phy_interface_t interface)
>  {
>  	struct qcom_ethqos *ethqos = priv;
> -	int speed, ret = 0;
> +	int ret = 0;
>  
>  	qcom_ethqos_set_sgmii_loopback(ethqos, false);
>  
> -	speed = SPEED_UNKNOWN;
> -	if (interface == PHY_INTERFACE_MODE_SGMII)
> -		speed = SPEED_1000;
> -	else if (interface == PHY_INTERFACE_MODE_2500BASEX)
> -		speed = SPEED_2500;
> -
> -	if (speed != SPEED_UNKNOWN && speed != ethqos->serdes_speed) {
> -		ret = phy_set_speed(ethqos->serdes_phy, speed);
> +	if (interface == PHY_INTERFACE_MODE_SGMII ||
> +	    interface == PHY_INTERFACE_MODE_2500BASEX) {
> +		ret = phy_set_mode(ethqos->serdes_phy, PHY_MODE_ETHERNET,
> +				   interface);

Shouldn't this be phy_set_mode_ext()?

	Ayaan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
