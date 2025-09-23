Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E726CAC5B0
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6p2jd65vvKUm3wBK2KgvCTlteZdLQ9J+YMF9TLTFoUY=; b=Ndk54zq5nKnyWi
	WdX5DCf82mONi4FMQsl9mvyVRK5mAWBQ/3IhRr6wdBIiHJyFzqR6Ykgti4IsLk/O3FqIChPEovvFa
	jSIUgvT8ZcBWRismMdEbeqQHMELLJVb8/hyGA0Lb+ZT7L1D7zToDFwAPdMZSuhbkjb638/6vE0XsR
	uYQMazl6Ct4Ba7qbB+QMFtYhMdS2NkLt7z/z80c6GJyzHyy16G+s6aNNjNiNHgvVsMj65dveP5j7k
	wyyZ9e2vMke/eHVFjHyp6ofxBfZ20a4d8u/MDFsS4RJubR0ptvMfgqhOPru7qgrGRL40REfYL2j53
	WZyMzNk4mvK79F0tgesQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0raP-0000000BycI-1i6m;
	Tue, 23 Sep 2025 01:12:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0raM-0000000Byb8-3vgX
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 01:12:52 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MIBM86029389
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 01:12:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sbAxWvwCeekeeUM4VZkkynWu
	aVVhVwplkcn9qevbOkU=; b=Y/oAUNwanp/8i/Q+2VUyIl68/RpkkET7mLx3+P4v
	ljJWg2/qAV1rTymX99LujG9ghxuiGxKTAdekIxKBy8L8K1KWfdO8wn1CcZvrWGwt
	a/I+r9PwxlfokT1t5hOa0UTGWfaoUMQLP0pwFy5CouAf4k+9MFfw7B2PFofQl2XK
	1CNh90y2zrTCQIgz9CkBiSerl+oBa1oI2rgy+EldK2cX6WLu40ZSD6t78MkU6zs/
	jf5tSPTeVf6WZm9V1RqwZDBBsR1ZW2wkMI0BZcPgp3nAwZJzEPgwxsMFzorBO4bL
	H6zExalqgFFFjjE4Un3U1OP4DQEDAh4yGLt+hmzi7xv34Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kk2j0m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 01:12:49 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-78e45d71f05so102223196d6.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 18:12:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758589969; x=1759194769;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sbAxWvwCeekeeUM4VZkkynWuaVVhVwplkcn9qevbOkU=;
        b=t1iNtLijTJvAL4PdjDKDcl7DBWBbgawIaMJEqaeAy/aVYQqRaFBhakDxRr1Ggy4Szs
         nM2r7eb560bmrcm3+HvfKi/r9+zyg11aP7jRVpBlJbTsGXCf+NthZ/t2aBZrzdiNseFA
         Hz49b+D45zsDESP2ts1mTxcGe6FhP1phgr3Gh1O8TWou92RXnV8bXOQXdgndN5UHodwc
         hGP8AbmA3hcgKjcjSN78uuv7Up+T4VnAdSdFBloUqGKsnSXi7BkP5Xpja4tlAtE0DOaJ
         LnEURbeMbLJVC8RcUXeXudplhrkdrNntmYYR/Jpd6NZY0iVQpSXf/d39Thq/rG9ENIZn
         hwaw==
X-Forwarded-Encrypted: i=1; AJvYcCWMomqNbJvtWI9/blk/Mp9IHZMrhvJIerImrDT9b2zAhR+sweJPuo5XUj7aOq75fhCWPQBaoNCm7DA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+YqSyyt+zo4fhV6Y2QytzzrRfgo4qRRMUdWwpk4rFeppxGF3j
	7srjB0d9J8w5ZzfK1+GTnSpbsDzdHUAzDvhnDFp2/NwCSA+0QJ2hBaeHQtfgNwi8X7ElQzSa7Kv
	kPNpw0IOf+1ATUt/mI27sPgU1fnKQWSzmfBtKDrrK0QZk8PI6u7lugitZGeQ1Yqth3Yae
X-Gm-Gg: ASbGncukUzpbOBADBrM9xE00SkiZBZtWFz4WFX3CkB4xaInboootK91/pi5F97lSS3w
	QjKrGCLm9YjATdAl1sFZI4ytWAhT4W+6rSW50yPiAPLTJHnrbjHS5vkN56+PfWeGHxhNlSnTeCp
	QRgBwmAUk9lig2zQTVM+Rtwh5Acu9AYAeIFGWIvV2VgxCB4bGFzjOjGQPCOhwaMGywhqw2+5yM3
	U8Fla645FTkQxrRHrmt21QCFbWoMqckjcHktAK8EX8vqunQnBWRLsgYUa6nxVBBjKvdF7AkSbV0
	858GJnND1yPW7ecae2n6eEkwYatdbvxh9+Sp/P3FmFl6ssw+Y8tYrmx5wOdVKWEGohxReABqdMw
	ywfrRRVGrBOh0Fjj7PxHVyU3LqIUDCYx138fw+ZQoZmr2v0A1bLdN
X-Received: by 2002:a05:6214:4114:b0:784:bd2b:abbf with SMTP id 6a1803df08f44-7e705012f87mr8722726d6.24.1758589968753;
        Mon, 22 Sep 2025 18:12:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFiSggGDRCsPU6/BaBSgPAIZ5+GwGUc8VAqZE9Y5TXkhtP0zAelL39yGsfxtACdIf0BhfPDXQ==
X-Received: by 2002:a05:6214:4114:b0:784:bd2b:abbf with SMTP id 6a1803df08f44-7e705012f87mr8722576d6.24.1758589968268;
        Mon, 22 Sep 2025 18:12:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57a8b1ed5c4sm2579538e87.138.2025.09.22.18.12.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 18:12:47 -0700 (PDT)
Date: Tue, 23 Sep 2025 04:12:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 2/7] dt-bindings: phy: rockchip: rk3399-typec-phy:
 Support mode-switch
Message-ID: <eb6ogrepo5acwcj5gpdolxxyg3xrx7kz6zrbizzseqyavvitfd@cnzurelqeh4t>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-3-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250922012039.323-3-kernel@airkyi.com>
X-Proofpoint-GUID: 2sy75YO8Di6fsSFH36SW6v0ICjp7Jb_p
X-Proofpoint-ORIG-GUID: 2sy75YO8Di6fsSFH36SW6v0ICjp7Jb_p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX6JQgsxeio5zC
 0xrUt+onNh9xyxpK+ugI1I8H9q4RLsrskAmzRaQHe7HEx+ZRpPpYZk0/j6W350afqxNz8DWxupP
 KsNve8tivkh6k44GO+q14N8O7KJ8ocguvrWwaliQUeXLin/EHc4TG+OAnjGtx9pt5DDb2Xzjiyf
 B6itVyJkByCmvmr2Q1Rk/B3WRl7lX6BSWjlHU6Tp/zxTTD8gb1jbbVoQ2DBjEES3kxw8aFsALmx
 j+k16ogLA8D6SWfzl/SRmbU4RrSo7N1RkqTC/8wvmUm+nmzUHJHk2aIFDYH3Xov/wzY9HKh9UO4
 iYDy1pJaEg7cr44UJyTpXTgK5XOJUdlctWzQt0FfLSPtCVvTDRcr6CyjfJcTopm/0b7ZZPLAkdh
 brE19nnA
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d1f411 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=KKAkSRfTAAAA:8 a=s_Y808Q6mXF3CJQU57wA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_181251_154619_8E636F7D 
X-CRM114-Status: GOOD (  24.96  )
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

On Mon, Sep 22, 2025 at 09:20:34AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The RK3399 SoC integrates two USB/DP combo PHYs, each of which
> supports software-configurable pin mapping and DisplayPort lane
> assignment. These capabilities enable the PHY itself to handle both
> mode switching and orientation switching, based on the Type-C plug
> orientation and USB PD negotiation results.
> 
> While an external Type-C controller is still required to detect cable
> attachment and report USB PD events, the actual mode and orientation
> switching is performed internally by the PHY through software
> configuration. This allows the PHY to act as a Type-C multiplexer for
> both data role and DP altmode configuration.
> 
> To reflect this hardware design, this patch introduces a new
> "mode-switch" property for the dp-port node in the device tree bindings.
> This property indicates that the connected PHY is capable of handling
> Type-C mode switching itself.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> 
> Changes in v4:
> - Remove "|" in description.
> 
> Changes in v3:
> - Add more descriptions to clarify the role of the PHY in switching.
> 
> Changes in v2:
> - Reuse dp-port/usb3-port in rk3399-typec-phy binding.
> 
>  .../devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml  | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
> index 91c011f68cd0..83ebcde096ea 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
> @@ -51,6 +51,12 @@ properties:
>        '#phy-cells':
>          const: 0
>  
> +      mode-switch:

Having the mode-switch here is a bit strange. I think the whole PHY
device should be an orientation-switch and mode-switch. Otherwise it
feels weird to me.

> +        description:
> +          Indicates the PHY can handle altmode switching. In this case,
> +          requires an external USB Type-C controller to report USB PD message.
> +        type: boolean
> +
>        port:
>          $ref: /schemas/graph.yaml#/properties/port
>          description: Connection to USB Type-C connector
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
