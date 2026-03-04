Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D04FEFCE4D
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 23:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqdpkyxGOn8rKLTqpFOvVtOlLwHLt4yrtHbTuMe1xeY=; b=dgshGvaZknpyI7
	oBjLpOg/mInz63/giUTi0DtE00soHpKFjl3c28u7bvFQuWEjZ5AuzLlkE73dwlszz1RqDqR8kagUr
	Synn19WGmg3cv8QV4RYZmpYcMzkcQsaJVxoKYR55TaQ4BmagvUfChTxQWAPBXpG8zv1vlG7aKZ/LP
	ngHpO0JjXk4Lbh6gJJ1OfMqcHBLJ6XShj1FAS0qB16YIXvU8epwoRyUule012CkGzV1Uege/T9FbO
	17jiKtC1zQ782UGOBLNjVfM4oZEA6m6+x3SsdtBff6uIh27LCPhkI7Ng7hkdDeOIdHhp2wDO8p4pX
	FN/oVWGk+5S/kAsvYqJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw3B-00000000ekV-3Ptm;
	Wed, 04 Mar 2026 23:54:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw38-00000000eiO-18G8
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 23:54:44 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624G2BQB035620
	for <linux-phy@lists.infradead.org>; Wed, 4 Mar 2026 23:54:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=D9sak1pWhxVBrwdJ2BGlDRM1
	u4FQCLLwnOBWXp3tU8M=; b=YDzVpAV36G9FJiGclgosp/BCt62vM9M9b056E3f0
	U+5xxlejiEUamIMH96BixcO5AaY77ZWBlSAKvu5XqmjeqoAku40urrsPuKmmnS9v
	3OkMLayFRlSKj3dBR7WZsu0j9iU2lRzpg2d7kLVS9w5ZRVAO2FJ6BsTzjCt69c98
	JFzB7UN71X/+3QF9qLWJGMzkqHwQXXEY1ttgq+wcei0KjxR3Fsb0D++XmNf1CbY5
	5aKHM5x6QqkmdYtjls//+oqXfFNFmC5IchUi4ZbV2wIf7afsnXeYSOnIz5G6c9dJ
	RXin04p5y380S3mSuZNgncUGt9sD1j/T6Lf+R7oqd/C+mg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpqwg99d6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 23:54:40 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89a0013d87bso79455776d6.2
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 15:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772668480; x=1773273280; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=D9sak1pWhxVBrwdJ2BGlDRM1u4FQCLLwnOBWXp3tU8M=;
        b=RrnrL5IPAi7UNk8KJJ1ZF04ic178Rpjw93ebWO3/vEs/ZO9h/2vUQz9BE2wuoT8vfy
         rmNz+gmqRqR8ga9OrXyf2CX30Y/VVhSTMGoM80MEQEGFUQfubeco06SNDmCbkPmHhMsd
         4qyQtTUJgI78Mlrzwt3fnwFHcynhczoFJKrIGJVcPqT/1ZqsPuvPhPwMwVI6jcvXv15g
         MDibkBrqV2MlQqGWuDSf6E5Z0vywYp5lR2jRmHgb+odVhSnlWl9/xMgL/kK0ztqmVrTH
         GiWAisc/+pmg416JRB8IAp9T79nONly9tg52nKmk4GScF9EWqKVyg0NNsXjKfS3SzFTy
         vv5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772668480; x=1773273280;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D9sak1pWhxVBrwdJ2BGlDRM1u4FQCLLwnOBWXp3tU8M=;
        b=DFzTH4NvmSOmJZ9Qv75Feq/Wr/kqVRudJlE0hV4SQrypDmONheuoOY6kwcL67QGJ1B
         s/cBMZb0Yngkqm7V9Gc0tL9p6i/I9wU9ITTI2zQlMYPs8aYj/vxWr+wgMUjbnoTdTi2F
         2efLrbU9yOeGOYhOCxUGb2sp7gTHVS831hprIHrr/cxKj6NGMIDoQlCm04Hm1lfPbJJb
         td9htRDWygCEXTDoiK91iNUidSN6eqgIy5HZTYeGNC85hTIn/JL9DeWTcyRfm1BnNVrn
         PjRslCxSKOGZN1d6FmxPes/A2ypf3TgKTi7pSWSECOVrpiNMZNdSkxqVqb4uar2usW5c
         pi2Q==
X-Gm-Message-State: AOJu0YwDeyTkJIvWubY6Z3Xdq3crb8A9U7iOShXmDbAaN1ZnEPXSSVYj
	ctavpjUE47ga7GoNWbqQau6j4R9RviGV5/wKXbPnBLH3FjGZu3VUoZ7udFQMMsjhqBpw3vj/QM7
	rgKT1w90jfb1ekCcKbyqYyC/L+EQXYqORSnU895SaDI/3R49KZ1JHYY74VJg1T/sLebli
X-Gm-Gg: ATEYQzxq8gzfaaM46v+s9O7Plk+DVaFtFly3oZj+yG7c1qZ8cssBiWPfxxcFDfuc9VE
	+3ZIhUi32vkxKT9DV7b3HGtZS7Um1uu5+sg9mzZolCbfpOB3/pMb5ZGPrQVq5r1j7fzNg1Wbrtr
	Y2CHd0MekijSGHLEbrDZhXo0hu1E2YvJpwgSe5J+4VUAO5qNcMV8kcLiLhd1x07Zir6839TOjzP
	eUmtBVfqIqKwv4Xi8UWL9GTcQTVu1L0d3AHpksZWiVXZIkKM+wMDKtiqhPAsDN2YT0zA3PeAj2c
	Swcl6aXsvv9eDz2jhHFCM5OqRb+irJtqlhNURnJcjjWsYWl8iEJ3zCt9EbefVw8Ar2xhw4/Je31
	45gej+wrGTMr3+fzI/iE3ad/1ierx75UrJb7zcAR++KAwDCbSA9rRPVoI29o7mTz9j2eI/fmKQ8
	cJjpxtWpmu+Lw9X+3wVYSpUd+dv0w/4Ssl9QM=
X-Received: by 2002:a05:620a:2986:b0:8cb:5442:d537 with SMTP id af79cd13be357-8cd5aed61e0mr519313385a.12.1772668480045;
        Wed, 04 Mar 2026 15:54:40 -0800 (PST)
X-Received: by 2002:a05:620a:2986:b0:8cb:5442:d537 with SMTP id af79cd13be357-8cd5aed61e0mr519310585a.12.1772668479418;
        Wed, 04 Mar 2026 15:54:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a123573c42sm1615588e87.72.2026.03.04.15.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 15:54:38 -0800 (PST)
Date: Thu, 5 Mar 2026 01:54:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
        linux-usb@vger.kernel.org, netdev@vger.kernel.org,
        spacemit@lists.linux.dev, UNGLinuxDriver@microchip.com
Subject: Re: [PATCH phy-next 12/22] phy: move provider API out of public
 <linux/phy/phy.h>
Message-ID: <cleew6tvum3jnflztfcqfwtafu4hjizjvebzr7qrsbnnp7vvrx@fjqhyh57o5hw>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-13-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260304175735.2660419-13-vladimir.oltean@nxp.com>
X-Authority-Analysis: v=2.4 cv=bdlmkePB c=1 sm=1 tr=0 ts=69a8c640 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=8AirrxEcAAAA:8
 a=EUspDBNiAAAA:8 a=lO4ColjPjyWKUZOT0LYA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-GUID: FseHlhlmCNo4m9t13zhI-z-7KbI49cDF
X-Proofpoint-ORIG-GUID: FseHlhlmCNo4m9t13zhI-z-7KbI49cDF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE5OCBTYWx0ZWRfX4VZBNc31/ZeB
 6HEiPYuLWjPbqnkIefxChB4lkdcGi/tAwm189onpsykLrfjXKJO476lZWwlhkgKX13is5DCJH8y
 uEpr0ghOxRbw/RH/PueJL2MHUoEJ6A0BBqiUlkfFj/Nm+SLW5lfqMBKawR1qwpcEuc5fPHiYan6
 C51ukThwrZQZthFZjf4/m0U8sjHgYOAzBU35UfFDPz1jv4Ga/Nr80YSqHg38roXpiEJfYGFhB70
 BVmKd7ShJUS8CqJM0/SVHArvHnXFZsY0mhjgoPz/raeqfIoHxGqM4ng4Zxw0tb/XgxGNy2E143W
 /hSg0g09vzQ/BBUCjDpmu7Pjo9AEvUB9YCWYjVqGwkdEktatraQ5mvxbJS//VQJDuqpSdeRk51/
 925Ouf1hvwEK+S7DmdPWw5RN58OaVrG5+Hn4plVK6GQClvDHiS1OoSEgHMy6NCamIkl/Rz0ygdK
 maQuo2cdhprmpVU9dRg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040198
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_155442_460451_893CEFC2 
X-CRM114-Status: GOOD (  23.22  )
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

On Wed, Mar 04, 2026 at 07:57:25PM +0200, Vladimir Oltean wrote:
> The major goal is to hide the contents of struct phy from consumer
> drivers.
> 
> The idea with "phy-props.h" is that both consumers and providers make
> use of some data types. So both headers include "phy-props.h".
> 
> Two slight points of contention.
> 
> 1. phy_set_bus_width(): Vinod explains that despite the current caller
>    situation (9 providers, 1 consumer), it is a consumer API function.
> 
>    The use case is that the controller (for example UFS) may have
>    limitations and should set the expected lanes to be used and width on
>    those lanes. A number of Generic PHYs can support multiple lanes and
>    multiple width so this is way for controller telling I am using this
>    configuration.
> 
> 2. phy-provider.h should go to include/linux/phy/ or to drivers/phy/?
>    We do have 3 PHY providers outside of drivers/phy/:
> 
>    drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.c
>    drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
>    drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
> 
>    but the practice is not encouraged, and with time, these should be
>    moved to the subsystem. This is not something that I can do now.
> 
> For temporary compatibility, keep including the provider header. This
> will be removed when abuses are all gotten rid of.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  drivers/phy/phy-core.c        |  34 +++
>  drivers/phy/phy-provider.h    | 256 +++++++++++++++++
>  include/linux/phy/phy-props.h |  75 +++++
>  include/linux/phy/phy.h       | 499 +++++++---------------------------
>  4 files changed, 458 insertions(+), 406 deletions(-)
>  create mode 100644 drivers/phy/phy-provider.h
>  create mode 100644 include/linux/phy/phy-props.h
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
