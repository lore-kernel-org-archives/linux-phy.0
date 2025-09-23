Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E761BCAC5A7
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 10:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iBotVhQAp9CZTOTdrn3S4ycLrru8FR2+wozp4wAFbmI=; b=IYuEaQtzjvp2i6
	NgCJ0rBrINXa0iUEsdvjwk2t2xZRJZeqzZAn8h6qVrbSwHIAhwYST38ILg/VpwEANw1sc3IDgXUP6
	GeIkKJhKjUCmbpCRGRFb+LBp2BmaqaOsLEIcXr7F1PGWyNAA1xabe9LPCYZDVl0UZhWlwH4y+t6Gf
	3GGTOOdIsnmgQqLtKZ2olGhXc1pVJAztkbfHrNE/TfFRtG2LbSPNitRY2ijapz4pwUKJkJSrwXECq
	umX9IIz5mo9++Xo2RVU+9HhW+N+uA4GfSvrpxmam8AZA5JQ773xy5hfK4FyrPtvGRfs+0jlfLHLTE
	jP7Rh+BsU3FAbuiPB90A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v10Rd-0000000D4PC-1jPH;
	Tue, 23 Sep 2025 10:40:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v10Ra-0000000D4OA-2HNZ
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 10:40:24 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N8H9cv006658
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 10:40:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+E5Y3KOKkWK0zDB+1vYk+3d3ywUHgZdkrX5cZAXaATo=; b=oJaIgszjB28M3mxj
	6lhLnO8Fb3VirpbxnUWC/poVarpnetMttnxgUgEfOpVSwqio/SnABSwPKGpJqWWX
	MQ2YOa05Arn30ffr7nkXJxmOCR6vtHDin3UvtdGdoURr9mK+aWPmqwS4BTD5Z+Fm
	iDRKS8FL4CWimV6ILb7P4s6lOM2MsyaCltQZCMKLZs4kq/01AhxVWwQXFOM9OMM3
	udd26br4ESNXszzWnEQyFH9h5udAlwwqVNK1/z+r56yKWVDyiw4mMF86RnphhPT6
	GMKAW/APCiMWAulY62wETDgLBmye7dod8GG0helMCAJ7bhL6pl4IY+Z3+/yVTf81
	Hr1HOA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kkhra52-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 10:40:20 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-78f2b1bacfcso87310856d6.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 03:40:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758624020; x=1759228820;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+E5Y3KOKkWK0zDB+1vYk+3d3ywUHgZdkrX5cZAXaATo=;
        b=P0oVUHb5nO70SX1v3HdKcWTDRwY4GfgyuuvuKw5okdsOXUK1dnZ06D2M0bE7qOMviJ
         uMazSlyZoMevw2Sn6HvTiRsoiR64xwPFnAyV46B4mpdQqfllTEyZa/VU+62ZttRjEU+h
         NCkPTOKMp0SN+h3AuXiSVLqfMTiqMtAalEaWlVBC78LHK2beEX2LZeCIboqpkkx2dz1E
         6Ov6aH8GHONMb5tEGVu2CNtZMkJDlfgvLxwxWK7M7sRSdE0Ka5oee5KwtWPyX4fqIoXh
         iESy3NzllfXLAyaXLGZQIV8hbOWohBm1Lj9aac+3PULhLRIk9IDbYgmJu0uDO8TH0g64
         fr4w==
X-Forwarded-Encrypted: i=1; AJvYcCVObQlOmKMPdEgAUKopq/U/wYuVDIElEDxqOx/T0JEewvN4EcaAieJPkQ/oSxeq6Qwz49R3vvqJ0jc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHQ4XZua5V/LZX06l8B/qm/2gOtqg5O3cngONVwJv1yVTbXcmz
	zjqHxcHEOpaT41VgW/NPZuJMc+mVJlfYyzY2kJZOctVg6D/7WEXN3R85izPO1iqNJDfVGxGzldj
	fp8/CloZepJMO3BrCoM+cjAwHBw8xOAMY1l9wT+jke06ZYaA4b/HwdIlpmSGDy4gPETlH
X-Gm-Gg: ASbGncs/mSTcLfihe5KNR1Zmppi+0AAO3hWOLdiqxZPNOmzgCwGQUV1NqS/GccylnWH
	DHf/8K56fijhFs4ocokyy4lqc/A5Qhj6QvNOtF1OAaakEhRbuF0MZ8jM0caWO911iM+5W2O+hTB
	ocfwjwTWc246TfY1J0vKHcGnTxTiL2RcLpkfpFNAJPWusfhGz4wcS2bYBcVpWnTF0JckmEgiEAR
	d24Gc9JUxfSmojykq57b7gPLMnGzEJn2NpK07lN7lUz2LEWdJlB9HxUFVcVEfuTnnlvEev/JqNl
	ExZtO1h5rT27YMIxf9DMeWTHqa1Sd89TBdwckTHLiESN+FQmPLNcbekB0NtCPq3P7TKxs5Uy0mH
	T9E/S/LX/SA65OQHxQpSEJCGvvlhsKptw2BdvUJL4qrC38xeImxsk
X-Received: by 2002:a05:6214:234f:b0:78e:cfeb:c6bd with SMTP id 6a1803df08f44-7e7131d7224mr16310566d6.38.1758624019854;
        Tue, 23 Sep 2025 03:40:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbi1GejF7wTX1JsXq4j6SdkTsO21UfYp40RBiKDy/IT+hQUKTQSvfe5K4Sj1YB0zHaQceTnw==
X-Received: by 2002:a05:6214:234f:b0:78e:cfeb:c6bd with SMTP id 6a1803df08f44-7e7131d7224mr16310156d6.38.1758624019177;
        Tue, 23 Sep 2025 03:40:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57eafff8430sm1511470e87.73.2025.09.23.03.40.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 03:40:18 -0700 (PDT)
Date: Tue, 23 Sep 2025 13:40:16 +0300
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
Subject: Re: [PATCH v4 1/7] usb: typec: Add default HPD device when register
 DisplayPort altmode
Message-ID: <bh73nttewwhom2pqccfnapnfkrys3zljkykgqmh4hsdalqgyzi@gbl5oejxsp3z>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-2-kernel@airkyi.com>
 <mygbqhiom6pkwsadzz2bqf5bth3ogsbd6iku5a7r5swxrakein@fjhz7udnkcks>
 <e9cf0aa8-ed32-4ffb-a755-150742455808@rock-chips.com>
 <sgvrzhbhkzxbuybmws44kyenhfyppm3blijkarypcin4fiscvx@mnajrlmicyxi>
 <18f55fe7-7c68-4982-916d-11752325c667@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18f55fe7-7c68-4982-916d-11752325c667@rock-chips.com>
X-Proofpoint-ORIG-GUID: Zk009TJcvn0bWg93MWzcM8yS_RWegKqg
X-Proofpoint-GUID: Zk009TJcvn0bWg93MWzcM8yS_RWegKqg
X-Authority-Analysis: v=2.4 cv=JMo7s9Kb c=1 sm=1 tr=0 ts=68d27914 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=s8YR1HE3AAAA:8 a=gFtpxDXL42iWtS3BWrUA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMiBTYWx0ZWRfX9KX72c2O3t4g
 jXxDY86UKi42RoDmjIP3rRzgtHhyXb7TOAeEOHELQADC7CQAcukxlhp/altk2kHKvBBZ/qukI8T
 s8PY7Sebbm+anNdvJf1aU0c4JICVGOWF0vsVPcKJngE2N8w//wsyzAZqmqjwWiEk5olW5oZBurM
 W4rCbY7D7VHPLyEMMFQth/kObt+zlBP7q4M+p5csdersg3GJCfniRGujkKOSBXKr0nVktx098ZK
 nZ8VLQdRKTunp/xujvEduD61oU4CZh5/6OsDs/7SkvF5nBqFFcX7EJVcQOvOEh+59z3cUBACm5p
 fNFyUjB4qSQRgagHB4LdP2Z1XQOiFqlZYDDU7R7Hbqy8ysabLBJ7XAv1EknAgVjUzij/4ekrZs2
 bqw4wg4A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_02,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_034022_697266_48816780 
X-CRM114-Status: GOOD (  55.41  )
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

On Tue, Sep 23, 2025 at 05:07:25PM +0800, Chaoyi Chen wrote:
> On 9/23/2025 11:11 AM, Dmitry Baryshkov wrote:
> =

> > On Tue, Sep 23, 2025 at 09:34:39AM +0800, Chaoyi Chen wrote:
> > > On 9/23/2025 9:10 AM, Dmitry Baryshkov wrote:
> > > =

> > > > On Mon, Sep 22, 2025 at 09:20:33AM +0800, Chaoyi Chen wrote:
> > > > > From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > > > =

> > > > > Add default DRM AUX HPD bridge device when register DisplayPort
> > > > > altmode. That makes it redundant for each Type-C driver to implem=
ent
> > > > > a similar registration process in embedded scenarios.
> > > > > =

> > > > > Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > > > ---
> > > > >    drivers/usb/typec/altmodes/displayport.c | 27 ++++++++++++++++=
++++++++
> > > > >    drivers/usb/typec/altmodes/displayport.h |  2 ++
> > > > >    drivers/usb/typec/class.c                |  8 +++++++
> > > > >    include/linux/usb/typec_altmode.h        |  2 ++
> > > > >    4 files changed, 39 insertions(+)
> > > > > =

> > > > > diff --git a/drivers/usb/typec/altmodes/displayport.c b/drivers/u=
sb/typec/altmodes/displayport.c
> > > > > index 1dcb77faf85d..e026dc6e5430 100644
> > > > > --- a/drivers/usb/typec/altmodes/displayport.c
> > > > > +++ b/drivers/usb/typec/altmodes/displayport.c
> > > > > @@ -14,6 +14,7 @@
> > > > >    #include <linux/property.h>
> > > > >    #include <linux/usb/pd_vdo.h>
> > > > >    #include <linux/usb/typec_dp.h>
> > > > > +#include <drm/bridge/aux-bridge.h>
> > > > >    #include <drm/drm_connector.h>
> > > > >    #include "displayport.h"
> > > > > @@ -182,6 +183,10 @@ static int dp_altmode_status_update(struct d=
p_altmode *dp)
> > > > >    				dp->pending_irq_hpd =3D true;
> > > > >    		}
> > > > >    	} else {
> > > > > +		if (dp->port->hpd_dev)
> > > > > +			drm_aux_hpd_bridge_notify(dp->port->hpd_dev,
> > > > > +						  hpd ? connector_status_connected :
> > > > > +							connector_status_disconnected);
> > > > There should be no need for these calls. Once the HPD bridge is add=
ed to
> > > > a correct fwnode, the drm_connector_oob_hotplug_event() calls should
> > > > deliver the signal as expected.
> > > It seems that only drm_bridge_connector can do this. I'm not sure if =
I remember correctly. I'll give it a try.
> > Other connectors can implement the .oob_hotplug_event call. Calling
> > drm_bridge_hpd_notify() also depends on the connector setting the
> > callbacks via drm_bridge_hpd_enable(), a step which is done by only a
> > few drivers.
> =

> Hmm, let's go over this again. First, drm_connector_oob_hotplug_event() r=
equires a connector fwnode.
> =

> On the Qualcomm platforms, the fwnode corresponds to the USB-C controller=
 device node, so
> =

> drm_connector_oob_hotplug_event(dp->connector_fwnode, ..) can handle them=
 directly.
> =

> But our platform doesn't use the USB-C controller device node as drm conn=
ector fwnode :(

This sounds like an issue to be fixed. Alternative option would be make
the AltMode code find your fwnode and report OOB events against it.
But... I reallly think that using connector's fwnode is the cleanest
solution. In the end, your final 'display' connector is the USB-C
connector present on the board. If your display has a USB-C connector,
that will be the socket that gets the cable from the display, etc.

> =

> So I use drm_dp_hpd_bridge_register() and drm_aux_hpd_bridge_notify() her=
e, I think it just create a simple hpd bridge to bridge_list.
> =

> But drm_connector_oob_hotplug_event() use connector_list instead of bridg=
e_list.

The OOB interface was created by x86 people, but we successfully reused
it. I think that addign drm_bridge_hpd_notify() calls just duplicates
the effort unnecessarily.

> =

> =

> =

> > =

> > > =

> > > > >    		drm_connector_oob_hotplug_event(dp->connector_fwnode,
> > > > >    						hpd ? connector_status_connected :
> > > > >    						      connector_status_disconnected);
> > > > > @@ -206,6 +211,9 @@ static int dp_altmode_configured(struct dp_al=
tmode *dp)
> > > > >    	 * configuration is complete to signal HPD.
> > > > >    	 */
> > > > >    	if (dp->pending_hpd) {
> > > > > +		if (dp->port->hpd_dev)
> > > > > +			drm_aux_hpd_bridge_notify(dp->port->hpd_dev,
> > > > > +						  connector_status_connected);
> > > > >    		drm_connector_oob_hotplug_event(dp->connector_fwnode,
> > > > >    						connector_status_connected);
> > > > >    		sysfs_notify(&dp->alt->dev.kobj, "displayport", "hpd");
> > > > > @@ -391,6 +399,9 @@ static int dp_altmode_vdm(struct typec_altmod=
e *alt,
> > > > >    			dp->data.status =3D 0;
> > > > >    			dp->data.conf =3D 0;
> > > > >    			if (dp->hpd) {
> > > > > +				if (dp->port->hpd_dev)
> > > > > +					drm_aux_hpd_bridge_notify(dp->port->hpd_dev,
> > > > > +								  connector_status_disconnected);
> > > > >    				drm_connector_oob_hotplug_event(dp->connector_fwnode,
> > > > >    								connector_status_disconnected);
> > > > >    				dp->hpd =3D false;
> > > > > @@ -751,6 +762,18 @@ static const struct attribute_group *display=
port_groups[] =3D {
> > > > >    	NULL,
> > > > >    };
> > > > > +void dp_altmode_hpd_device_register(struct typec_altmode *alt)
> > > > > +{
> > > > > +	if (alt->svid !=3D USB_TYPEC_DP_SID)
> > > > > +		return;
> > > > > +
> > > > > +	alt->hpd_dev =3D drm_dp_hpd_bridge_register(alt->dev.parent->pa=
rent,
> > > > > +						  dev_of_node(alt->dev.parent->parent));
> > > > This needs at least a comment, what is dev.parent->parent. Also, the
> > > > of_node is not correct here. It should be a node of the connector,
> > > > rather than the device itself. Consider USB-C controllers which han=
dle
> > > > several USB-C connectors (e.g. UCSI). The DRM core won't be able to
> > > > identify the correct bridge.
> > > I think=A0 alt.dev->parent->parent is the connector device. Am I miss=
ing something?
> > As I wrote, it needs a comment (in the source file). No, it's not a
> > connector device, it's a USB-C controller device. There is no guarantee
> > that there is a separate struct device for the USB-C connector. On
> > Qualcomm platforms, the device will point to the USB-C controller (TCPM
> > or UCSI), which contain usb-c-connector(s) as child node(s) in DT.
> =

> Thanks for the clarification.

I think it should be fine to pass the fwnode of the usb-c connector that
is outside of the USB-C controller device (if that's what your platform
uses). But I think this should be:
- the usb-c-connector node
- it should be coming from the Type-C controller driver, you can't guess
  it here.

> =

> =

> =

> > =

> > > =

> > > =

> > > > > +	if (IS_ERR(alt->hpd_dev))
> > > > > +		alt->hpd_dev =3D NULL;
> > > > > +}
> > > > > +EXPORT_SYMBOL_GPL(dp_altmode_hpd_device_register);
> > > > Having the function here will bring a typec -> displayport dependen=
cy
> > > > between drivers (which you didn't document). It means it won't be
> > > > possible to build typec core into the kernel, having the DP AltMode
> > > > driver in the module (which also doesn't sound like a good idea).
> > > It make sense. Perhaps moving it into class.c would be a good idea.
> > > =

> > > =

> > > > > +
> > > > >    int dp_altmode_probe(struct typec_altmode *alt)
> > > > >    {
> > > > >    	const struct typec_altmode *port =3D typec_altmode_get_partne=
r(alt);
> > > -- =

> > > Best,
> > > Chaoyi
> > > =

> > > =

> > > -- =

> > > linux-phy mailing list
> > > linux-phy@lists.infradead.org
> > > https://lists.infradead.org/mailman/listinfo/linux-phy
> =

> -- =

> Best,
> Chaoyi
> =


-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
