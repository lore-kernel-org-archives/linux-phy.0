Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EC58C61CE5
	for <linux-phy@archiver.kernel.org>; Tue,  3 Jun 2025 10:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogaahr8J4R+dBLIBgcMENQ6xCHhSioSLEgkBFB11EXo=; b=mfGP94lh+jS/eX
	ux/4cZwRGlZcJO247G59NeE1USchzBFCg9Zm1GUZARZ5n9Bx1IN2BdesgXNjP50ybT0s9zkKHvds/
	YBNu0Vu0BMI7oqAPCeJYrz3Mt2S0H5RZ53PZarUudBywH7k3H8R1SL01T+MoTxBBChD9zFSjOzw9+
	U4qjBVVkqei4oS8+lOAbwP2Qh0y/4pcJeilDOo98DdQKh3OfH5761pK4aKjaneexmGyWkjVIyQw0A
	85VILx5AlGuwzcCuBFMIm5VXACwmKxjA5aVDBdO+xsRO9Yai6FmBc4OrAfuMr9RkVl0hxQ0m13rEy
	8+dUZnBCTy8iev2oHPEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMPBU-0000000AhYg-3Usl;
	Tue, 03 Jun 2025 10:47:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMOww-0000000AgGW-1U51
	for linux-phy@lists.infradead.org;
	Tue, 03 Jun 2025 10:32:55 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5539JFbQ027453
	for <linux-phy@lists.infradead.org>; Tue, 3 Jun 2025 10:32:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hdcvv2i1wfbhcJ2qFHR5aWoW
	+NavP0DH/EC45K6EfKE=; b=NjWVld3OWzjAthsbqqfWU/ADqpHlNH1G1+RV48Rx
	tNvlnZ7pWRwWDtD+1ob2DUeLxg9svE4hYLEEwmV3HDkMyvMw/peQZgmZvNfsRwLu
	rH8HRu8847FWpMy1wE1I+f/cyeAL6TFkPJeLUIK9fa0uTV3Tm5C1kJDtntxXcmf6
	6LegaYdu4quu1cbIKc5G6Yi69+p6JIZGVIiBlcVs/0SyNpSsvSjd1ol1vZuf+npv
	tLjGQrXQDe6iUxmh6+LOca4oXyegB3iZ3A4QBv8QKxrZPINj5qA/qHRy4/uVqMVW
	hM/yWTnu7Tu7OekvM2PkQX2sEkqVwnLgS8YLIkm8YL9Xqg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8t28mp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Jun 2025 10:32:52 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f2b0a75decso43724986d6.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Jun 2025 03:32:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748946771; x=1749551571;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hdcvv2i1wfbhcJ2qFHR5aWoW+NavP0DH/EC45K6EfKE=;
        b=JC0u+2GWxoFY+ULisrOKjTCCH6hADquyvWNOBh63oqIiJj+B7NwsKyQCevxBAXyExs
         Hyq3Vy9jLu9eE3Gsc7uAU42K9rUQd0CQP68BooqRQEhHkF9KoX9BnqtpvWJnc9Q6f6u4
         ZnzyICoqoiAwKhaPio4S7YZ1ek7B4+lw/NDiEFX9EReqeNDX57HUz3ozQrgmhsq7zyMC
         beowdcarFC0ehuFcc+wYDzy487cuCA7ykHjeA+UvH5lr/HUX+foft/D17JuM6y6HnEEk
         r8SNtLsI3CJJAGHoe6W2LH7nirdiC2AYKr/34VXhvjl4uah4aBjm3sUkCyd9ZTZa06HX
         MVmA==
X-Forwarded-Encrypted: i=1; AJvYcCVTuP3R1cfsq53+TXRRZrwkz3qSXzJ49jEuSTp6UWs9zNrTL7NzqMuctAKBRrpgUyyxw6aUBJNijKk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwRQBWL/COjWjv4Yu16dIFD4Mzs00IdBOgg4/BGzJdHgv5shwUW
	QrUWvGNqMMl/2SBU5bcq9CZ0z3OsrHiuF0EKHQxZ97KmQSZsyH6rDNNgk65ZTi553MD+LXmIoW4
	ywG/q9D1GrfwUaDcnI69OrPzUPqRhYrr4IDZlWvNrpCi6wpvfmYc4EB9TuqUwSJrt5Y98
X-Gm-Gg: ASbGnctSB+8OCNbD28Jh0SDm1fWh+dIUVJAbswkqp51nZ/t2Dhrxqe091SlfKVlBlXp
	0iMSxfE/Tpb7BDMXsjpPJ2ohm/F7RtAyfutrr+jksT7sCQ8hWgFbaJKucIt2Ohp5/wPJwe8EpP8
	/osJ6lHgQbZffSlTZuyhsD7JBto/lVNv8s488jOO2yuwiEIk0Vfpz3NAtQqLivXlpgq6hDrYLkc
	XiwGc3VxeUfJhTaYO48eKh5q1Oqz3qwE25NfZ4SnLc6LIpn7ZpO1u3IAZCxdmuh0sr9gD6Ehit5
	kG197vGn6N7jX7U5E3i7RqjBi+EoF8EcLmaHSAE6JZaxuri6f6LQf555Gwhm2nOUtmg+SdMLk5E
	=
X-Received: by 2002:a05:6214:29ef:b0:6e8:f470:2b11 with SMTP id 6a1803df08f44-6fad196e2d8mr276596386d6.23.1748946770868;
        Tue, 03 Jun 2025 03:32:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAOYthyogdcBLfUS88Ob3qijwtTZm+x+4i/WF3m8OdP7uim81UAXkXpIRzWw+nLEsjnjmARA==
X-Received: by 2002:a05:6214:29ef:b0:6e8:f470:2b11 with SMTP id 6a1803df08f44-6fad196e2d8mr276595736d6.23.1748946770306;
        Tue, 03 Jun 2025 03:32:50 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553378a02bbsm1871023e87.84.2025.06.03.03.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 03:32:49 -0700 (PDT)
Date: Tue, 3 Jun 2025 13:32:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
Message-ID: <2zk4ef3ezdfwpyhepnzpf37xxbci32l4sovsyfiymcucga22yz@zs7darysskd2>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <20250527-topic-4ln_dp_respin-v3-5-f9a0763ec289@oss.qualcomm.com>
 <itmvwhcf37bmnpadcyc7kdt7wx3eljyjwyv64s24zwhbr2e45g@76uzcpjqzx22>
 <7f464eb7-469c-4350-a43a-3b99394ad689@oss.qualcomm.com>
 <7icpna4l7z63gs52oa5lqf35puib66wxxmqqul6ezdkhuziaqi@mvkf73zz2iyj>
 <ac476285-9ba0-48ba-87d5-416bed395948@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac476285-9ba0-48ba-87d5-416bed395948@linaro.org>
X-Authority-Analysis: v=2.4 cv=eJQTjGp1 c=1 sm=1 tr=0 ts=683ecf54 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=eY5ZQVo8cdIDur6ws_sA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: iPEPQp4Gf0wDRt7W9XEy2MSQj5NbzZgB
X-Proofpoint-GUID: iPEPQp4Gf0wDRt7W9XEy2MSQj5NbzZgB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDA5MiBTYWx0ZWRfX6lKT7mfpFwSA
 mPLJLdOKeGJHssj2el6dH1ovxbQoDLFyV8lMLJFSytUogRf6mfuiOAoJV0WSC+Zp6i+Tsq7C41b
 c91l3/qoHAclIYh2Y/qgNhlGdl6Pv1oe+3WY4BOodOXEJzH5hevYs/fT7w7M3zKVQZ2Xx9eLKT0
 uha2ah5Mw12QM30Qgny6VFwVR8YZfSWMhex1oiOU4xrrzIFYJI2Qo/4c7duOpo/lPTFug8WSJIY
 S95RZpcqBH8q4u86rbwtmNVH0Wc9R++Qj+Ahlgg3jsP/rcuGGIdBBHz4StFA+Ge7AaSnMO2Ytgt
 sivLDCqC2KaZtQBnRjP8ZENmuW0YZaynNnPDKTpPtNN8zRTw35Vt3PaEk6lVAuT7NMjt8rwpZhE
 zSRccFDdBxKg98L7RWw9cwwgNmZSyaCBT50Ev8atG5fxgiJSw5hd1XeFUBIlaSZNWU17u4tY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 mlxlogscore=999 impostorscore=0 spamscore=0
 phishscore=0 mlxscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506030092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_033254_398780_FEF2A7C1 
X-CRM114-Status: GOOD (  43.55  )
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

On Mon, Jun 02, 2025 at 10:51:42AM +0200, Neil Armstrong wrote:
> On 28/05/2025 10:58, Dmitry Baryshkov wrote:
> > On Wed, May 28, 2025 at 12:22:01AM +0200, Konrad Dybcio wrote:
> > > On 5/27/25 11:55 PM, Dmitry Baryshkov wrote:
> > > > On Tue, May 27, 2025 at 10:40:07PM +0200, Konrad Dybcio wrote:
> > > > > From: Neil Armstrong <neil.armstrong@linaro.org>
> > > > > 
> > > > > Register a typec mux in order to change the PHY mode on the Type-C
> > > > > mux events depending on the mode and the svid when in Altmode setup.
> > > > > 
> > > > > The DisplayPort phy should be left enabled if is still powered on
> > > > > by the DRM DisplayPort controller, so bail out until the DisplayPort
> > > > > PHY is not powered off.
> > > > > 
> > > > > The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> > > > > will be set in between of USB-Only, Combo and DisplayPort Only so
> > > > > this will leave enough time to the DRM DisplayPort controller to
> > > > > turn of the DisplayPort PHY.
> > > > > 
> > > > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > > > [konrad: renaming, rewording, bug fixes]
> > > > > Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > > > ---
> > > 
> > > [...]
> > > 
> > > > > +	} else {
> > > > > +		/* Fall back to USB3+DP mode if we're not sure it's strictly USB3-only */
> > > > 
> > > > Why? if the SID is not DP, then there can't be a DP stream.
> > > > 
> > > > > +		if (state->mode == TYPEC_MODE_USB3 || state->mode == TYPEC_STATE_USB)
> > > > > +			new_mode = QMPPHY_MODE_USB3_ONLY;
> > > > > +		else
> > > > > +			new_mode = QMPPHY_MODE_USB3DP;
> > > 
> > > To be honest I don't really know.. Neil chose to do that, but I don't
> > > think there's a strict requirement.. Should we default to 4ln-USB3?
> > 
> > Yes, QMPPHY_MODE_USB3_ONLY. Nit: there is no 4ln-USB3 (it is a special
> > mode). We handle 2ln-USB3 only.
> > 
> > > 
> > > [...]
> > > 
> > > > Consider the following scenario: connect DP dongle, use modetest to
> > > > setup DP stream, disconnect dongle, connect USB3 device. What would be
> > > > the actual state of the PHY? Modetest is still running, so DP stream is
> > > > not going to be shut down from the driver.
> > > > 
> > > > I think we might need a generic notifier from the PHY to the user,
> > > > telling that the PHY is going away (or just that the PHY is changing the
> > > > state). Then it would be usable by both the DP and USB drivers to let
> > > > them know that they should toggle the state.
> > > 
> > > 
> > > If modetest won't stop running even though there was a DP unplug
> > > (and therefore presumably a destruction of the display), I don't
> > > think things are designed very well
> > 
> > They are, but differently. Display settings are always controlled by
> > DRM clients (typically, a userspace compositor). They can decide to
> > send data to unconnected display, they can decide to ignore HPD events,
> > etc. Even if userspace responds to the event, there always will be some
> > delay. I choose modetest, because it's a particularly good example of a
> > delay going to the infinity.
> > 
> 
> DP link state is handled separately from the DRM state, if you look at the
> MSM/DP, you get the following calls on an hdp event:
> dp_bridge_hpd_notify
> hpd_event_thread

And this part will hopefully go away soon... Which means that DP link
will stay on until atomic_disable().

> dp_hpd_unplug_handle
> dp_ctrl_off_link
> phy_power_off
> dp_display_host_phy_exit
> phy_exit
> 
> independently of any DRM state change, DRM will be notified at the end of
> a disconnect with dp_display_notify_disconnect().
> 
> So even with a modeset running, phy will disabled following an UCSI disconnect
> event.
> 
> Neil

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
