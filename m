Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2F18CAC592
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 09:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOAjqjfemsOJjg9sltqCHBy4yTSGGnyGps57AgGKyhk=; b=CMahJh0QcFuGdo
	SUSsiZcPZuRNghTp8bCuG+2aHzKuZDdtA1dnlMsGnriWnMKUlqMa2LOvrdyLo9T0yCjJBuWkgQf2Y
	E9VOXG2Jleb9wXH1YpABBHd6oVDEaSF1I01ZIHf2wOQbX1Ppbyond28lsg4KTGDqU7erLrRsYJYra
	HW6L5vQo6yGB6NShdzRxz26vHyRnhdvohJwEq/08Q00t/SVYpGywSsbuTOpb9B0ZMvMMpR/1tr2Rn
	yoo5zAYi7bHtIf5n/R2vGHSAWBNGfJh9OD8M1rq6C5qNdzngo8zScUsoWcgkrGF+kwxr0gkIInHBi
	4vTO93vUDXiIyw6EkHnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0dJp-00000009xkS-1y7F;
	Mon, 22 Sep 2025 09:58:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0dJm-00000009xj6-0qQ7
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 09:58:48 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M9GDKX022762
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 09:58:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IW9nZTpAUTWb9o/++g/7GLgt
	nAqVsaz6ptGNBZO+z5Y=; b=Qq4XOYHGcj5UjpfNhhWI+pS57JToMKI3A3wZj8UI
	e8VxbtMbKQqcnO3vgHJjiI1PtRXRLcdpXP8THPDyHLUVRfVFCnbLkmNwHpu89D86
	Tmx+/g5eHlLvK5Y+fdgcwQV9Hd0yvJ9Dm2vPkwNP6Eb3iblyKwO533H97yiCsNT5
	DjFscqzWPziW45E7jsvjglu4Eh0VVhx833W3X1UJFtZy7TbNCNrv0zXds+vCOiF0
	6OVB6ZsjxP+3gY5A2r3OnsuUzzWhe2z6In7YHB8EI9fzhifCEfeBHGnDJHLgswT3
	4DVBAqOwZYt0Rmw69CVPr681jEzwGz1pS0tM9EmEUndu8g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3ny8462-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 09:58:45 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4cdde949741so8520481cf.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 02:58:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758535124; x=1759139924;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IW9nZTpAUTWb9o/++g/7GLgtnAqVsaz6ptGNBZO+z5Y=;
        b=SdLceTVvxAnU5jCDWHjsFRZ7oSbKGJ6HWZ6eUEO75U24uiWTD1xnjqmzSllrEo/m5e
         HRdvb5GobAOc1tIlURcz++9Z8c7U99RhMusBvWIAmjP2an8gCW3bJ0HFPXvNwf5+9fiC
         4NfXgZEvOvWCgofT/7R/OyY+lMXfhfzDg17sSc7k7zccJHSYX0JHsn2AAeE3nP6GLjh2
         7F6Vh/pAuewU71VrK2cifA0fWWrCbioukukmu5fLt7huwFrSGUid74BfS16C8zjLDdxG
         8rDJYJHYhtfE2feFaLaXQpqHIRRTiMY6FCuf7klg8emBsDCM7g8kVj0K3azQVR6Rzp9p
         mWNw==
X-Forwarded-Encrypted: i=1; AJvYcCUJsUc/NPtIV7goenIMkHneiT1ONjh5oOI1usJxh3kj98oCTnWz6UlxmcRHPPGnV+wBSbv+4yOJvyo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3OQJYDNfZIRQ70Oku/59tzYDfCzEAvzm5OUoP9AOqSyKHO+dn
	T3wLolP90l7pNnBLTjKgNUAjWno6HHFrQuZJRMqtovkfdsU34TMuKVrKPMppb39sAx4C1Wara70
	qgJ87PYDpxTz9pRsPrf+Av0rKad2FnmuZJguzigg1QPx0oNIP8hMTmu5UQrUUf9uKVnLO
X-Gm-Gg: ASbGncuvApsm9dmpSYyO+L/gVu7ozdUPVo5p1moALU7iZk2ye59vlRePO4MGEre2l8O
	AmpLGG3HFIPSGFhjNqsOvSwi3AxZEFRBdND3pBZOypY6rw6HjtggWejQI9Rk/6rrNWTANr+ktS0
	2F+teQcWSlOjKCRWc+CEwWgFm0IcUtewqvB5VAIojTwd2PFwfhn2O5LrXVvThDGORKRAqLJKUwt
	BzeK4h0MQkOCJO+eVSwoss6EkuEicFg0+AmymKHERFWNVt6IGV5ar3spgqFCYT28TCNLCT/Ttsv
	nEwoJzq60A4RsN7sXt0kB1yftel3WO3KgBQrs6sdC45W1UrVdyQ8yli8Qk0eavuB/BSJS+yVedN
	5B6gGpe0IS0nc/B8dDwwgexoNyaNcBE3S9km1ZcrLHlaa02MClIr8
X-Received: by 2002:a05:622a:5c17:b0:4b0:edba:5a47 with SMTP id d75a77b69052e-4c073e88e08mr153124921cf.53.1758535124053;
        Mon, 22 Sep 2025 02:58:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZrkbJMOE8oi3lEYxkgH7mxWyV4vRf+Ti294a6hd808l4xFyp1mQDl/IreW2vbGpM6xLJBJA==
X-Received: by 2002:a05:622a:5c17:b0:4b0:edba:5a47 with SMTP id d75a77b69052e-4c073e88e08mr153124541cf.53.1758535123374;
        Mon, 22 Sep 2025 02:58:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f44b29sm3181298e87.24.2025.09.22.02.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 02:58:42 -0700 (PDT)
Date: Mon, 22 Sep 2025 12:58:40 +0300
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
Subject: Re: [PATCH v4 3/7] phy: rockchip: phy-rockchip-typec: Add
 typec_mux/typec_switch support
Message-ID: <75xs2vy4pt7c6qtc4tmk6j7jdh6hdmbz73pkbv5e2ndid2gj63@nla3q6qdb43h>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-4-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250922012039.323-4-kernel@airkyi.com>
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d11dd5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=E19HVUzDLkS-Nl9glC0A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: NUbyZZ20v1-ahAHS9I8suseDOAyzKIXK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfXzeOtJz+7ZIp4
 M6HyL1nJnp4an/uhHXmkrJ4ZxZh7EiNBpkz7qrPvAuB0NNblwMiJL6XeXHV7bJR63u+0Melr4l+
 t+8m9q9i7hs95hdt731xnWlDZjuJsgcxWLkAPGE7DlJMPB8S1TQqCFqw4lNV5NWdbsS9EUCeSul
 3DZuMiF+7q58+qrzjDc732p/xhcDuwiXAm14v3pxTfd7GqalHayPNLUH9RtnQI7zWT2z6d8Lm2/
 5VeFJoeSS15zhbZOAqnP38YTZCmiODGL8WkZC5BCpCXr1LaSsM/kHxGDjzsSus8RBmXg7T7KC1A
 pbG/CFgrET6NrNT4LTyPHs2xVHxwJk5Nin/PBixhpZX1KedQuqeNphKrteYCTAKTfw8wTrG82Se
 4IGI3EQ6
X-Proofpoint-ORIG-GUID: NUbyZZ20v1-ahAHS9I8suseDOAyzKIXK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_025846_237284_8BBD4EB2 
X-CRM114-Status: GOOD (  25.52  )
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

On Mon, Sep 22, 2025 at 09:20:35AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> This patch add support for Type-C Port Controller Manager. Each PHY
> will register typec_mux and typec_switch when external Type-C
> controller is present. Type-C events are handled by TCPM without
> extcon.
> 
> The extcon device should still be supported.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v4:
> - Remove notify DP HPD state by USB/DP PHY.
> 
> (no changes since v3)
> 
> Changes in v2:
> - Fix compile error when CONFIG_TYPEC is not enabled.
> - Notify DP HPD state by USB/DP PHY.
> 
>  drivers/phy/rockchip/phy-rockchip-typec.c | 365 +++++++++++++++++++++-
>  1 file changed, 349 insertions(+), 16 deletions(-)
> 
> @@ -850,6 +998,72 @@ static int tcphy_get_mode(struct rockchip_typec_phy *tcphy)
>  	return mode;
>  }
>  
> +#if IS_ENABLED(CONFIG_TYPEC)
> +static int tcphy_orien_sw_set(struct typec_switch_dev *sw,
> +			      enum typec_orientation orien)
> +{
> +	struct rockchip_typec_phy *tcphy = typec_switch_get_drvdata(sw);
> +
> +	mutex_lock(&tcphy->lock);
> +
> +	if (orien == TYPEC_ORIENTATION_NONE) {
> +		tcphy->new_mode = MODE_DISCONNECT;
> +		goto unlock_ret;
> +	}
> +
> +	tcphy->flip = (orien == TYPEC_ORIENTATION_REVERSE) ? true : false;
> +	tcphy->new_mode = MODE_DFP_USB;

I don't think it is correct. Orientation defines only the cable (plug)
orientation. You should be getting the mux events for the mode
selection.

> +
> +unlock_ret:
> +	mutex_unlock(&tcphy->lock);
> +	return 0;
> +}
> +
> +static void udphy_orien_switch_unregister(void *data)
> +{
> +	struct rockchip_typec_phy *tcphy = data;
> +
> +	typec_switch_unregister(tcphy->sw);
> +}
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
