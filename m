Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72F5BCAC5AC
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 03:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kkzIWXr9xBYrtx8bSQ6cYHzeQUPvlsZZQZ+jdVjIOg0=; b=EUr8dkHhaxkuU/
	W1KxIEKVp+gQFxyyibD5iOMozrlAIf3MLqhcBAg2GdfgotdVCmhmL/msD6KF1YIo1b6SxTpZ2D+WJ
	15cMsnioVjsL/SqzUNz3PYWA2gQn9eTiq971MjRn1klRPt5TsGDrKw6Ub+nretcdC2E9+2emd9WuN
	DSVw0C+5farht4O6aWI1S5R14q3X6v0MX6NJeg8aUPwzwnddCP0vdGeCNw+pJdhp8inQ0/7NMp/8o
	FA1o1cN1W9StmwqUDxyBKUjPsD3WuW/en1dOQtGgORXLdJxJ7SxX3oER6Yx57tK0HCfI9mX+qHRLM
	AitklqbrIy7QeARXr+7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0tRA-0000000CCeN-0wok;
	Tue, 23 Sep 2025 03:11:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0tR6-0000000CCdA-3oUp
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 03:11:26 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MHiioU022695
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 03:11:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zzjmHo8UExNyts9a86c5rOPRLwbouhg5B9NyY8BO0dc=; b=FWJ4ysUoiA+7goX3
	Sw8tvcUNtLYwObMlIva6KQ1rsrh/Ucn8yHS5x9cAXs5QCz6Z4Ckm+rxw/wVqiix1
	fNb1sY0Q4KSn2R1KiI/fiihPtSO89XK6G93tQnK2G2W3ky83HTq7kdIYvj0ehwmo
	r7PQB4SRFqhXvpvibC1NGsXAZfdKi7+8Xak0ddtawnQ77imX46uctmBbDDCmTVAI
	O0uGp0QqCwQafrHGoq8Btq7QM9rifgCIwPqKbKndwOOT1T7cws5LhkQnmucn5egI
	YOKo+ZrK7b9IQWWQ8XLv92DvfliXwWSjJVyAlU36gVq/dfRC5NgX22BiXeYdjNOe
	EHCd7g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyaqxm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 03:11:24 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7bb414430c2so39072906d6.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 20:11:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758597083; x=1759201883;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zzjmHo8UExNyts9a86c5rOPRLwbouhg5B9NyY8BO0dc=;
        b=QbAIbt6xruFNZ70U5a4Tr/NIZu0w2jVJutZ7XHjzSftDTe4E/0sMuvrN62kUBcP7nB
         s4r9vWxWAeCI0lWlsOk37Oa//3V431jeWDFo8sLZ96J6r4eiLBLxuV7W4T3SJV4DtcbI
         8GcWi/SBXtTXRGi0PQ6j7Yz3gd90Rf0PNpkUwE3dl0Orx8eUCPn1RA4BvrlNIzlbbkTH
         WkEzekkhxUyZTS0Nknmi5HzTEG9P1jA1w8bMGkb/tsCcxpw2FibBrqRkeUJc/hVrl/7E
         Nuh2ll5ymRgw+5CDQ1j/SfO889YZGVAOGqTeaXJrHXWLifCXFjgKaeGHuahHZsKWAdBP
         K/Xg==
X-Forwarded-Encrypted: i=1; AJvYcCWG1PI0zDNKBYZpwbpge1KAVpQn84eCN96je0MAkskiCADFa5HxXdG+I+OqM17DjCtJmSaDsfwpIsA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzn5OL7PCREqrW7xf215QflmJvCpjyD+koIOJZWtX5hpb0jKnTt
	oQBwbAdpQ6z2T70WhCD0huYxOJ8yEL6tH1pU4gY4scrlqjOo9lMHL/ZsDQx6O6LWkebxNcaNEu/
	KT/kZaIcnEb4NFKQQtWpEgr6m+YNfDWdtl/yIh2F2jaYqZYtjo88QMrNXghr96vhnVEVJ
X-Gm-Gg: ASbGncvhqyQeEKqR92QQrhkA//He2j79tz/1KaNt0COhF6DHj6yPQdM+LWMm7MLJbS3
	l+UjX/bbKrCm3SeeGk4OrsRKGAyB9w7l1cBXREK54f+y1NUaQXCk2XYFn0uW1y3roC0nNDZN6AL
	0m5sFDWCnAddoiQcWj8gwR7SIwVgv8NwKrTvhhJQzBjC+fugnZh6zpL4d7bojt5ko/NOoMGFMf7
	Lr9MFupwFLVQPK3ShwdalccqDp9LMUSiELSHAttgD7GgNx4dHXfXTruWuG94yymAYzldWDQBk8n
	EsbjziSSHBb60MpnD77vI8cieSKBJM3luhLANpnSd7HIiv8YnW709avmFjBPdGRejJ/kauVC2RV
	ZDDsMye0ODBDlOb4rwZVwLmx4Rbf2Dtto0nmPOKUMSMoGYFFbCA0A
X-Received: by 2002:a05:6214:2405:b0:787:f736:bc66 with SMTP id 6a1803df08f44-7e7a024aa9amr10990406d6.1.1758597082891;
        Mon, 22 Sep 2025 20:11:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGFrgxll/zPiyK2YOBX6xrhw1Zdt0GXMRnRefj7dBxaqcSjZF4iPJ6LotQxs+XBMp15xvm8ow==
X-Received: by 2002:a05:6214:2405:b0:787:f736:bc66 with SMTP id 6a1803df08f44-7e7a024aa9amr10990036d6.1.1758597082225;
        Mon, 22 Sep 2025 20:11:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a90a1dd3sm3671866e87.75.2025.09.22.20.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 20:11:20 -0700 (PDT)
Date: Tue, 23 Sep 2025 06:11:18 +0300
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
Message-ID: <sgvrzhbhkzxbuybmws44kyenhfyppm3blijkarypcin4fiscvx@mnajrlmicyxi>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-2-kernel@airkyi.com>
 <mygbqhiom6pkwsadzz2bqf5bth3ogsbd6iku5a7r5swxrakein@fjhz7udnkcks>
 <e9cf0aa8-ed32-4ffb-a755-150742455808@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9cf0aa8-ed32-4ffb-a755-150742455808@rock-chips.com>
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d20fdc cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=s8YR1HE3AAAA:8 a=wnU_q0TmBvglJHqaN7EA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: G4OG0ojFPSbwTfoDI0Q3h_x53F_yaAYJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfXxIYBAuBDToXC
 aeKUWO9mDA18mCeC+A1mnU1EVORci8A3dAsgDUNTCRWK4okKuUIXUMtucb/97Dij+Gpf/kSj+I5
 NdUTYNsSz3xcgffRPkOEqHR93f4XjgmyAa6fzn4UOE55lBdUhDsE/eZvsqaJcbYB5dDc0pU65Bw
 W2O0tznzgeHgH+d+os9SUklIqllf9uX20LfeY3AYIU2MhNLhpAemJn6dgRSFew9TscH9STRp+yj
 pykB6zv9F3R6K9ebh0xL6P40LzfPDxueE1dgN4VzYIPvfXvUrU3TUVEs85VEPKqBu254zisOKUE
 uZvbYHzaFbafgNaCjZssXuw4d5etjwpMtfn/ExmroI/LUtKpnPmMrn9HGyScqDZQt1epAuO5TKn
 ZrjGC5Af
X-Proofpoint-ORIG-GUID: G4OG0ojFPSbwTfoDI0Q3h_x53F_yaAYJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_01,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_201124_959853_6921CE4F 
X-CRM114-Status: GOOD (  42.14  )
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

On Tue, Sep 23, 2025 at 09:34:39AM +0800, Chaoyi Chen wrote:
> On 9/23/2025 9:10 AM, Dmitry Baryshkov wrote:
> =

> > On Mon, Sep 22, 2025 at 09:20:33AM +0800, Chaoyi Chen wrote:
> > > From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > =

> > > Add default DRM AUX HPD bridge device when register DisplayPort
> > > altmode. That makes it redundant for each Type-C driver to implement
> > > a similar registration process in embedded scenarios.
> > > =

> > > Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > ---
> > >   drivers/usb/typec/altmodes/displayport.c | 27 +++++++++++++++++++++=
+++
> > >   drivers/usb/typec/altmodes/displayport.h |  2 ++
> > >   drivers/usb/typec/class.c                |  8 +++++++
> > >   include/linux/usb/typec_altmode.h        |  2 ++
> > >   4 files changed, 39 insertions(+)
> > > =

> > > diff --git a/drivers/usb/typec/altmodes/displayport.c b/drivers/usb/t=
ypec/altmodes/displayport.c
> > > index 1dcb77faf85d..e026dc6e5430 100644
> > > --- a/drivers/usb/typec/altmodes/displayport.c
> > > +++ b/drivers/usb/typec/altmodes/displayport.c
> > > @@ -14,6 +14,7 @@
> > >   #include <linux/property.h>
> > >   #include <linux/usb/pd_vdo.h>
> > >   #include <linux/usb/typec_dp.h>
> > > +#include <drm/bridge/aux-bridge.h>
> > >   #include <drm/drm_connector.h>
> > >   #include "displayport.h"
> > > @@ -182,6 +183,10 @@ static int dp_altmode_status_update(struct dp_al=
tmode *dp)
> > >   				dp->pending_irq_hpd =3D true;
> > >   		}
> > >   	} else {
> > > +		if (dp->port->hpd_dev)
> > > +			drm_aux_hpd_bridge_notify(dp->port->hpd_dev,
> > > +						  hpd ? connector_status_connected :
> > > +							connector_status_disconnected);
> > There should be no need for these calls. Once the HPD bridge is added to
> > a correct fwnode, the drm_connector_oob_hotplug_event() calls should
> > deliver the signal as expected.
> =

> It seems that only drm_bridge_connector can do this. I'm not sure if I re=
member correctly. I'll give it a try.

Other connectors can implement the .oob_hotplug_event call. Calling
drm_bridge_hpd_notify() also depends on the connector setting the
callbacks via drm_bridge_hpd_enable(), a step which is done by only a
few drivers.

> =

> =

> > =

> > >   		drm_connector_oob_hotplug_event(dp->connector_fwnode,
> > >   						hpd ? connector_status_connected :
> > >   						      connector_status_disconnected);
> > > @@ -206,6 +211,9 @@ static int dp_altmode_configured(struct dp_altmod=
e *dp)
> > >   	 * configuration is complete to signal HPD.
> > >   	 */
> > >   	if (dp->pending_hpd) {
> > > +		if (dp->port->hpd_dev)
> > > +			drm_aux_hpd_bridge_notify(dp->port->hpd_dev,
> > > +						  connector_status_connected);
> > >   		drm_connector_oob_hotplug_event(dp->connector_fwnode,
> > >   						connector_status_connected);
> > >   		sysfs_notify(&dp->alt->dev.kobj, "displayport", "hpd");
> > > @@ -391,6 +399,9 @@ static int dp_altmode_vdm(struct typec_altmode *a=
lt,
> > >   			dp->data.status =3D 0;
> > >   			dp->data.conf =3D 0;
> > >   			if (dp->hpd) {
> > > +				if (dp->port->hpd_dev)
> > > +					drm_aux_hpd_bridge_notify(dp->port->hpd_dev,
> > > +								  connector_status_disconnected);
> > >   				drm_connector_oob_hotplug_event(dp->connector_fwnode,
> > >   								connector_status_disconnected);
> > >   				dp->hpd =3D false;
> > > @@ -751,6 +762,18 @@ static const struct attribute_group *displayport=
_groups[] =3D {
> > >   	NULL,
> > >   };
> > > +void dp_altmode_hpd_device_register(struct typec_altmode *alt)
> > > +{
> > > +	if (alt->svid !=3D USB_TYPEC_DP_SID)
> > > +		return;
> > > +
> > > +	alt->hpd_dev =3D drm_dp_hpd_bridge_register(alt->dev.parent->parent,
> > > +						  dev_of_node(alt->dev.parent->parent));
> > This needs at least a comment, what is dev.parent->parent. Also, the
> > of_node is not correct here. It should be a node of the connector,
> > rather than the device itself. Consider USB-C controllers which handle
> > several USB-C connectors (e.g. UCSI). The DRM core won't be able to
> > identify the correct bridge.
> =

> I think=A0 alt.dev->parent->parent is the connector device. Am I missing =
something?

As I wrote, it needs a comment (in the source file). No, it's not a
connector device, it's a USB-C controller device. There is no guarantee
that there is a separate struct device for the USB-C connector. On
Qualcomm platforms, the device will point to the USB-C controller (TCPM
or UCSI), which contain usb-c-connector(s) as child node(s) in DT.

> =

> =

> =

> > =

> > > +	if (IS_ERR(alt->hpd_dev))
> > > +		alt->hpd_dev =3D NULL;
> > > +}
> > > +EXPORT_SYMBOL_GPL(dp_altmode_hpd_device_register);
> > Having the function here will bring a typec -> displayport dependency
> > between drivers (which you didn't document). It means it won't be
> > possible to build typec core into the kernel, having the DP AltMode
> > driver in the module (which also doesn't sound like a good idea).
> =

> It make sense. Perhaps moving it into class.c would be a good idea.
> =

> =

> > =

> > > +
> > >   int dp_altmode_probe(struct typec_altmode *alt)
> > >   {
> > >   	const struct typec_altmode *port =3D typec_altmode_get_partner(alt=
);
> =

> -- =

> Best,
> Chaoyi
> =

> =

> -- =

> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
