Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A709CAC5BB
	for <linux-phy@archiver.kernel.org>; Sun, 28 Sep 2025 21:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDVc3MZlOeZVU4dRa472rxaHbbYDfm7hN5zf2jNHNqY=; b=vRBFoDPfuWkV5n
	RntQID3PiNemq3vJZ5p1yW4FeqduLLZd28tY3KNynDYZo6qugRkPUMhoFTE95Btb1pUUNg9+1cg4c
	o8x/0L0LcJerugybznv/x9q8CSZr9/9RLWi9mOjATXx5KVCc0h85mJUSvrUH3nVgM1cK/xIbodcRx
	YTzJiEpGpdrtlKjFoPpfkfud7d+c6mh+8ed+iNaPWdKYWdvxCkszmEGf7jHhlp0xvi9T4TvHXkre1
	tONF/V0NuPZ9LQuXp/vxdVH/ynwNmLEmdl/fvuu4QeqFwkjfZJDG6QGWaMyDCkjUqMxzAayXRx9qd
	A4rIHl4Pe5b7a4D2MkDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2yvj-000000007lp-2yE9;
	Sun, 28 Sep 2025 21:27:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2yvh-000000007jP-1Urz
	for linux-phy@lists.infradead.org;
	Sun, 28 Sep 2025 21:27:38 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SJxivx005799
	for <linux-phy@lists.infradead.org>; Sun, 28 Sep 2025 21:27:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FaQfFaFOCtgfi/FoFC/UkQ6y
	6ObNoFB/yOWfDU1S1+U=; b=PAL+GAJD0HhMhVMaHNzW3C3EAMAcOjXGffze1CsK
	uDDHw+OwM0yB+ka31d9/zuJbovMY2r0tHatqUjceYV1dTa4hRa0TKDhQM935U1M9
	EVpAHWpK96Y+eJAsUf1Na0pK4BQ/54gx83afKRWs1YyVEKvNUQY+CUMWDIJDyMqg
	/Di/0NHnbJ+RkAxfUWrKAbLm1vdfHc4uLpUz8GYmdWeoUOfvcYoptNtluc3Bqljb
	jOZw4DJSSgvme0o7NkTB7lVChb+UfQtRRMfE3iEj03aAqxw/Y7EikAMN6qyyh0uj
	vSaN6ZASONI0LNJaRT/geCkcMNo8Z8e7vE5PHWRM5YT6/g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vqub4t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 28 Sep 2025 21:27:36 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4de5fe839aeso61429041cf.3
        for <linux-phy@lists.infradead.org>; Sun, 28 Sep 2025 14:27:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759094855; x=1759699655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FaQfFaFOCtgfi/FoFC/UkQ6y6ObNoFB/yOWfDU1S1+U=;
        b=woj1oG+BwdDsXmrnS6yeb43nYKDSv8jyXr/Ir/F1/bnRVc+134nXXlrNRQ5yoOMzfB
         nhTYdeBNhSxu/UOK+YKdhEBnX7eOQ9+F3uSZFTI0lGntXiMbarElIFFvypO6K5F7H4rk
         rW9Oa+vGIDmyMCOLsJBjE+px0YYY2mG0GtnISR6w0Bh1d9S7rh28UjCzhyESCn+DQA53
         CGJxgdG+biGIvrIhDZmelcxhW0+c3tY7MvN5OIgIk2hFy4WQ8MAtTa+eHokpA1lh6l8m
         fDbB3MisPqHRJP8fUfU+WI7qNhyw2PT5CC4Z6EDc2A9q/CcBtPuazhPr6GkSBOqvT90k
         Xwow==
X-Forwarded-Encrypted: i=1; AJvYcCWy7WzFLCElWPI9df6efOFHj/p9GA/MlOv9nXu1JLe0PCK0x6FZwPG9a4sg72CqZZ0G3Tj093j7sQc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1inxL+L1NNefOjlXsjafGiA32krLoh6FgnHhOMuPecNXR3qdp
	jyroARWqf+/rS9fFjZrQpleRWPuN9egnK8pSUt91VZQfnmnkH+KPgLUWNmEuDIf3RaopMxgm57I
	gn3NAxyz6aF37yYUu+Jj5T18Y9SWdCYOT9QmRn+U2aJHsI3urApKCKYzc+YWCcni6+IFv
X-Gm-Gg: ASbGncvmATS/lG1p9KyZH7WOeYAqTyGdDS/y2AFc55VfgbcR6d8ZQ4MICwvP7WsqerO
	sp4/U5ZVPgES4OTHPExAFZ2+mxy00kI64RMckCyW5Vi4eCv/HVD7C45kVCAfULs+vTte7xOvSdX
	u5xc8WKB9etoEICX1w85qTquWGDxrQaDexDy6QUdPxbsOHv5HjA3a6cZndDeXtyuCfkXpRLMBt5
	ihNu5pnYlw444vRwGk4MTG+mE6LCqO4mmHxVuPhgc3RXWhtS5ziGjqkFNWjor2aNArizyr+b9gs
	aGJJjFBPG0yMnZNZaVEBUHiTdNIl/xr1vI1GAJBzld3ojPS045PRz1DjSLC+gmIJfWSNjDO4V1g
	NKKOXXkumpUZGItq1f70lU80rOQs2aP3T493OFwQ+m4wC0yXq7Vir
X-Received: by 2002:a05:622a:4c88:b0:4dd:2d5a:4c70 with SMTP id d75a77b69052e-4dd2d5a5249mr113850761cf.45.1759094855486;
        Sun, 28 Sep 2025 14:27:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVlSpEy9WtWa4TAoo8vOL0fbhKJIDjrX8Rm+aa/grsoe17g1Qr6IL2cUsXyuX3wvLhYBHeqA==
X-Received: by 2002:a05:622a:4c88:b0:4dd:2d5a:4c70 with SMTP id d75a77b69052e-4dd2d5a5249mr113850321cf.45.1759094854866;
        Sun, 28 Sep 2025 14:27:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-587c807ed8bsm359961e87.37.2025.09.28.14.27.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 14:27:33 -0700 (PDT)
Date: Mon, 29 Sep 2025 00:27:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
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
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 5/7] drm/rockchip: cdn-dp: Add multiple bridges to
 support PHY port selection
Message-ID: <pwk4ylrxyedq33qivpwy4kly3yx25yjkv75ja3prf5ynxosiez@lb53gculvj3x>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-6-kernel@airkyi.com>
 <idyrlzhd5sotg3ylr7vbwmczimglffc75nafxbnhhm3ot2jn4w@ixerm6elfmre>
 <ede70598-c451-4352-ab3e-0e278ce33ad7@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ede70598-c451-4352-ab3e-0e278ce33ad7@rock-chips.com>
X-Proofpoint-GUID: oiDhlPIl62evZ3fGz0_G0SPQ1Po1rC2-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfXwKMbBeO9ovqI
 HeCko3L7ml+BXIiWNCjRoA5L+ZCjVT1/34js4YcpMtqNrAoqezMosN8dom47aSMaH1jAfndARIE
 pugcoZ5bsqPfc682nqVQT0UroxtwMSrB+iA+xT/JssaWzuftmDgqZQ6NZuYNL2DJYe+GCY5wQ5M
 sMBNNqKxr8chjMGHd35WjR3sn/9o+7tXwpX4xA4Xkv79iq+DJcVEoiySOk66QTfZ23YG4rHWgyL
 TG7nQteDHuwghOzWzJwlwuaXXtusPvSZ306Ospvi7PuJV/+mIdy9uLQSRiadVd4ANWQGPxSvqRC
 4KsoKYgkXtMAzUkG9qhOmS+EH5UAhC6nGIbMrHVR1fTCsiuslAk3zy3ElG0j1TfAqkPwQ9eHkZs
 bQK58L8GMIkonImqmgjaOdZYbhxkJw==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68d9a848 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=gy9Ct68RWRgD3XKeOnoA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: oiDhlPIl62evZ3fGz0_G0SPQ1Po1rC2-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-28_09,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_142737_406976_9CAAF07D 
X-CRM114-Status: GOOD (  27.69  )
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

On Sun, Sep 28, 2025 at 05:52:35PM +0800, Chaoyi Chen wrote:
> On 9/23/2025 9:50 AM, Dmitry Baryshkov wrote:
> 
> [...]
> 
> 
> > > +	/* One endpoint may correspond to one HPD bridge. */
> > > +	for_each_of_graph_port_endpoint(port, dp_ep) {
> > > +		/* Try to get "port" node of correspond PHY device */
> > > +		struct device_node *phy_ep __free(device_node) =
> > > +			of_graph_get_remote_endpoint(dp_ep);
> > > +		struct device_node *phy_port __free(device_node) =
> > > +			of_get_parent(phy_ep);
> > > +
> > > +		if (!phy_port) {
> > > +			continue;
> > > +		}
> > > +
> > > +		/*
> > > +		 * A PHY port may contain two endpoints: USB connector port or CDN-DP port.
> > > +		 * Try to find the node of USB connector.
> > And then there can be a retimer between PHY and the USB-C connector. Or
> > some signal MUX. Or DP-to-HDMI bridge. Please, don't parse DT for other
> > devices. Instead you can add drm_aux_bridge to your PHY and let DRM core
> > build the bridge chain following OF graph.
> > 
> I think building a bridge chain across multiple drm_aux_hpd_bridge may be difficult. First, drm_dp_hpd_bridge_register() cannot register the bridge immediately; instead, it is deferred until drm_aux_hpd_bridge_probe(). When it is added to the bridge_list, it may not yet be attached, and attempting to attach it at that point is too late.
> 
> But, if I only use drm_aux_bridge on the USB-C connector, and use my own custom bridge on the PHY device and managing the alloc and attach bridge process myself, then things would become much easier.

Well... consider a your board, but add onnn,nb7vpq904m retimer between
the CDP and usb-c connector (it's not an uncommon device nowadays). Or
add fsa4480 analog audio switch. Build all the drivers as modules. You
should not need any changes to your drivers to handle such boards and
such kernel config.

With those devices you can't handle everything inside the DP driver,
since there are two "streams" of probe events: the DRM bridge needs the
"next" bridge (in the direction from the SoC to the connector), but the
USB-C events code needs "previous" mux, switch or retirmer. After some
trial and error we have ended up with having a chain of drm_aux_bridge
devices ending up with the drm_aux_hpd_bridge inside the Type-C port
manager driver. This way the typec_* depetencies are resolved first,
going from the SoC to the Type-C controller driver then the DRM bridge
devices probe backwards, creating the chain, which is finally consumer
by the DP driver inside the SoC.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
