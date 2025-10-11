Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D14F6CCA476
	for <linux-phy@archiver.kernel.org>; Sat, 11 Oct 2025 16:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beOT4ZSXAy7UHoKEZfx1rQtnBuBP86HpwZpOeTAvR1U=; b=dXrF0tLlaEB09K
	itY29kv5K08DkzuIa/a2s1msPYruADNKjQrq3O1yroL+9ajL/s7Dbol6MnJFDpx8sj3xjNFBdFeMj
	+aq0f5TJBkTR8lyy5apqFjN8onGGOHMQVWdkqzbxxXpPl4DvcvRKXgwPzY4VXxp1E+JrC/DWVRva3
	YVQcnac2+cRzPC9AqB+7ZxW/x2iRYgRGAYcn3Y+ZTIpuk+hCF/ZjRuJlWB4xcFVNkMsBQBizgJlYK
	AY1/rER4Vt3s5P8bpMr16BtoL1HcwLZ/NYeMytt6jMfwQ0zRh2I1L996Z1t9LqlOM9H3SXBcoeFuk
	kCJhrBvattsRn/kiWUuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7coz-0000000ALnp-2Eyb;
	Sat, 11 Oct 2025 16:51:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7cov-0000000ALle-2AmT
	for linux-phy@lists.infradead.org;
	Sat, 11 Oct 2025 16:51:52 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59BEqQHV000434
	for <linux-phy@lists.infradead.org>; Sat, 11 Oct 2025 16:51:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xDql/hmPHmbhLyPjNWGht0Ir
	lePqDSoVlgpyDaLxB/g=; b=EvAdmvm6JMiBwFtspv0DVRebMaZ0aXzHvBjDTmh6
	Pl60vwPGKB0cy3LVeUlVVjqCfimlC7XL7NnbIhmMZ5worXFZG91+Siul6cbVZs0L
	/tYDYwhfev7fPrgJq8VIpAhQ7xY1tndC7UIOZzQNtAtgIOpFU9lLhrlSlZ/tMh00
	G4rXeTkQIwVKyC9ovm5cMzFOzx94tfTYYTPcIji09/iwL63WTS2Gd45X9PBAW6MA
	YYde0awJMTCsglI/bbJwhzW00Y2bz+0MQmivyjvX1rPJD0xqfMcU8RutgBgNGbY1
	HiCWWxsnlZUDXyE/g5bcjD72dU2gQvJZLDvITIxdLDojUg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfbhrxck-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 11 Oct 2025 16:51:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-870d82c566fso1593178185a.1
        for <linux-phy@lists.infradead.org>; Sat, 11 Oct 2025 09:51:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760201506; x=1760806306;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xDql/hmPHmbhLyPjNWGht0IrlePqDSoVlgpyDaLxB/g=;
        b=flbRSPYb6CvRW0pO+khyI83JDz1JWW7N/5XfcnlpX7IWCNLNgck3FBpe4fbul2BV/7
         4GPZokNpoxmZORRTFMpUYVntvLebOQe4IW49L1OTL6c0mUtXjGzkpxH5Z6k4wqvfc+Pq
         yGj12euHjkIybwNvpmhsuPrKWqQKQPyxh4lKx81P4yOMSfAEUxPbP1PGBlHnjhL7K7JF
         oLFUcjqX/qD+kGGcVjowq+xsqnENCV01APLqbVNwS2OLmnW9ku565og7FQtHOAzY5MD/
         5ZB997/NnbmWCmG1amucShqE5HsuhNPJYAfIRtWmnC19FN/ucnvYnel5zTVMX7WZSgmG
         aV4g==
X-Forwarded-Encrypted: i=1; AJvYcCXQHs872IJocpiKQlI6ARmd55CjSKaMoVUzTZIL5x3DIfqQWLonmQssMZKqfO9NEp8p7FqO/LQmF1I=@lists.infradead.org
X-Gm-Message-State: AOJu0YyaLuaaF0o7LFvoP+zVRC7ifHCZZHSA1t+STMXULXfzGB5fOejV
	6Rwol3Ez8qFag839+66mJWOsV3Lj/NRAMddy69wSwFxCAmrjqTPrTOosiNxZl+1ZFOsRrS7BuJ3
	FohUCEH5NJcNOWVSOd7OdVmxSJaBlbh+UFC3/edH7sv5qz7d4NbzxI9j7ZUe7CzvucsYA
X-Gm-Gg: ASbGncsQDxLSWiTOB9o6B2REf0ACbWAhAUOi739Fn7TLPFRby7iTGlGBpYnHWVcwFra
	cizzO1X4Q+3Dayen13Io/RH7g1O3dUzeH2+3QbUJtiwlAUd+uDMbNEzTa30Eu6umCJjCjmCp+T/
	MB3dI7vTz7SxPHQ2QIsphuXO5LELdaz/LeaYe/jyxufBTgc1wfAgC5oVqcBifF3XZgI6s4xjmPU
	qAxKZM+J4YIhEnsp1Wa3pXnN6s7gcmc8Eenq9wMBWbVgdG34+7me9rVF3J087FrKWriIrjBReRH
	A7srYq5PNP4/QLDiYL1Rw6aFL21fHW90CCuzcqkmObgcwlkHBSQ3YSgwr0PWP1Jg5lSdkPh4FdR
	zzFvggK/E+RRt2Gk3eigJ7vIg8FxJyVlD7Y4HmHjrMwol8dCnstfH
X-Received: by 2002:a05:620a:690f:b0:878:7b3e:7bc4 with SMTP id af79cd13be357-8820b47d5cemr2727437485a.11.1760201506251;
        Sat, 11 Oct 2025 09:51:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1knLg1ejAD4VBlbVpVAYhUPHuhDgVtfBnPSvgk3VxA9bjqCPn8ECh/NUyGL80y7radiIDxw==
X-Received: by 2002:a05:620a:690f:b0:878:7b3e:7bc4 with SMTP id af79cd13be357-8820b47d5cemr2727433485a.11.1760201505751;
        Sat, 11 Oct 2025 09:51:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5908856394bsm2060654e87.66.2025.10.11.09.51.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 09:51:44 -0700 (PDT)
Date: Sat, 11 Oct 2025 19:51:43 +0300
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
Subject: Re: [PATCH v5 1/8] usb: typec: Add default HPD device when register
 DisplayPort altmode
Message-ID: <4eizpzejw43gqt5jauvkeij65rracols2voa2osflwyjrwbvun@sovgqfuhg6mc>
References: <20251011033233.97-1-kernel@airkyi.com>
 <20251011033233.97-2-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251011033233.97-2-kernel@airkyi.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX7LSBrShc4mIV
 FJv3E4cEhMERy47wdkZ5dH2q1ABb+MH4c8dMfQ1dI37FqCGM0gpdk43r9LZAEytbGObvuxBAIXj
 loe0PKe0S5/z7TWdNZtmRj6oi1aSIVKxawaQc5EH+MXxOEd10rqrLVk0Cv+2R1/PIvL7h76l5cv
 N+kUMLcGqFZOptYM3NHJDvLXj1OCcB0v8y9ocrVmU9VKvwCPjWadfZc8qR7NMY4u9ffYkenWvtr
 FD6WGixTMWYpMNR89vB1whrs6DEf1DIvYIdAaC5p8LtmlYA63Bq1xPY513SpLScT9cnAEy/ssMd
 MGPcN2rGHChvtPTUi6TreKkSWvYIA3yArO2Ppx0FQE5AQVxDgL1Wxh5ztLrDa378WuPtSw1mWqq
 11XH1kIgFk62D/R/CHrmgu1+rsaW0A==
X-Proofpoint-ORIG-GUID: dHQJrpIbo6RgBGfA7AEz-D0jmu3niGzw
X-Authority-Analysis: v=2.4 cv=bodBxUai c=1 sm=1 tr=0 ts=68ea8b23 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s8YR1HE3AAAA:8 a=RXhTPAuaP42idGtAG2cA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: dHQJrpIbo6RgBGfA7AEz-D0jmu3niGzw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-11_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251011_095149_670469_1590A5BD 
X-CRM114-Status: GOOD (  18.51  )
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

On Sat, Oct 11, 2025 at 11:32:26AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Add default DRM AUX HPD bridge device when register DisplayPort
> altmode. That makes it redundant for each Type-C driver to implement
> a similar registration process in embedded scenarios.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v5:
> - Remove the calls related to `drm_aux_hpd_bridge_notify()`.
> - Place the helper functions in the same compilation unit.
> - Add more comments about parent device.
> 
>  drivers/usb/typec/class.c         | 26 ++++++++++++++++++++++++++
>  include/linux/usb/typec_altmode.h |  2 ++
>  2 files changed, 28 insertions(+)
> 
>  
> +static void dp_altmode_hpd_device_register(struct typec_altmode *alt)
> +{
> +	if (alt->svid != USB_TYPEC_DP_SID)
> +		return;
> +
> +	/*
> +	 * alt->dev.parent->parent : USB-C controller device
> +	 * alt->dev.parent         : USB-C connector device
> +	 */
> +	alt->hpd_dev = drm_dp_hpd_bridge_register(alt->dev.parent->parent,
> +						  to_of_node(alt->dev.parent->fwnode));

You can not do this, unless you make TYPEC core:

depends on DRM || DRM=n
select DRM_AUX_HPD_BRIDGE if DRM_BRIDGE && OF

> +	if (IS_ERR(alt->hpd_dev))
> +		alt->hpd_dev = NULL;
> +}
> +
>  static struct typec_altmode *
>  typec_register_altmode(struct device *parent,
>  		       const struct typec_altmode_desc *desc)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
