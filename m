Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C97606A31A
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 04:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zl0xPu7K;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=L1QNesmO;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Kr0gCD/r
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ASgkyrqOUw0oZKbFyFyfAHMcSJbWHT5Na8rfUH3XVqI=; b=zl0xPu7KSz1zcN8EOCEE9LrbMS
	+kpMZBoyZr+XPbqNzYQyPaM52UX39J2E3hR66xRU22FTEmvNy/02/ZkNVr4YC2Utu++3hs9aNEjTp
	yJgSwESwf7oUoQlF8inCQvc128rN0sRu3SMEHaOqayVTrArKznxbtcEJSLnUys5pyDgH8bvTg6Efm
	RxeJjEyLEFyJoHTGZJO3/vrONJjzU1S94y5rgwbHicFkRP/8ZD70olGbzsNl8GOqdt+WUWtz6P5Bi
	0Wv/dxCavLhvosyIXLznpQ6oobfwU/V8BARxtRsExZN1KYhQXE2pAvSv50g60bZ6WKdOTp86lQLto
	0LrUKHqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMHz9-00000008KeC-36c2;
	Thu, 29 Oct 2026 04:43:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMHz6-00000008Kdg-1tvv
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 04:43:29 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69T1jeiV3947993
	for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 04:43:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5uHNMI+mYwqaa6AkEWaTgDK6
	tIel6I/W1KNWIPq9vxA=; b=L1QNesmOMfxm4HJEsyioci1+1ty8vabSyp63YJc6
	Y0pm/BVQ/U3WktR+OmxynvrRZ5nseI1131WcCB4gQkJaF96caniWT2odYjmk7ApB
	8Q7V/PBVzGsbuvxswjKaVvmd/UpzxV32KFcf8cnr+grakLQgMiilhj9XrWHhnJRu
	D84aIsGpIJetIyhzEOKYA0GbL7/EUW3Hv5bNRymyOOfN+v8OUBA6jecrcV4hxV6U
	9zQu5Dzyo1IYUjx3cTYK+YLa6cRVcRlC7uoy8hHlfxKEzXZ2qtcUBrErXpNdSPgp
	OVfxm5VRg5jcz1IR9Cg56PHx745tEoxNBwB4P0k1CP2fGQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkneut7nt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 04:43:27 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3aca98f01c1so1433386a91.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 21:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793249007; x=1793853807; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5uHNMI+mYwqaa6AkEWaTgDK6tIel6I/W1KNWIPq9vxA=;
        b=Kr0gCD/rnKTZUHcaRS0EAnndqiPpc08JiCz0IMzKUX03fNDO6hnlmIHfTcHVrwyMjI
         YfdeYx/emN3NUD2MnTyNPn5U1AzcbJiS7sGAJ3m9XgHicmlkldLHSQsxRQEfL27LdN5u
         xzB7gGPoU3xXIws2kw2d0wNqlV3n5oM9/+JjDKtnbDfkBet0kc+9Po0YIPK1sgu4XQtW
         rPJaWv6aeUz7mdAWD7oHMaSEIuuja+IeFdddcxKX9TEkHTsXsyO4pt5sC//X118lbiVv
         5N6TYt6o7Q25ITXPovx40LfAhBsSrKRESdXFBD0xz+V57dKwQREa9OFud/VF7TqW1zDr
         60qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793249007; x=1793853807;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5uHNMI+mYwqaa6AkEWaTgDK6tIel6I/W1KNWIPq9vxA=;
        b=AeOnfGq0MgaAg1DMBvgqYv9xlNEYPpVEmQM+cs19IOQwVDSQnLfh3CfFhWXVf/9Tuh
         zvkMcJ02vMDH2tsXTG/XRIGkS9e+B7DWPI0CiROm10pPNzRNQfwnTkCu3sMD79VxMDAn
         wbqG9Wlh4DlLW2VOX2NIsHg0fM+4NO9BR8rNxiv3IcTdO3Dcb5blzwbBMTKC6OA6x8Ez
         7zmU7O9JjBVFvYV1LymMofZPGgIZH8XIFIc1H9oNS5gjqv6VzShIoiMs9n5WdFEQgPvD
         ohYbWWYRCoS+0W2nMkDxQiQCp/5lyIRpmyWkBh3hS1RX9qxK6IfOLzXa/PHaqyHQZ5sr
         Bz4w==
X-Forwarded-Encrypted: i=1; AKwUvByNHseoLWgV2aJxXI0PABmFHKCP4oxf2ZdNxfo/8ff3k2UC3UQC4tcncvOwoVrFlEYF1VPZ3CpAJ5g=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ6hloYe/41PX55FOko5QM0zWBmXQ6I2j9JscIe9PBrpXKJmGPU
	EPeu7FhkB0mZeOothEJ325byr9b91a3UIK/OXURUkAoJj/UG9kuoeZatgAF3NL6pqEx//lFp2jt
	bXXC74eRPAi/9wcEzpwAErBijAJGAcIzW36RwfQQ4JnUhPW5KTkL3mC0+dl5BIU6Bs/eC
X-Gm-Gg: AYBFou1zpoJvX/7q6FZ+VS05br3skyMm92WH56TKlt6J8csRGrF4NY7QDkMpCEwA7WB
	Mp+TpAI8ycbjp8atCVHwkrTrKJlNnvckmJkdJl7AhFbtSXNMofv8i/WulZ6vJG2zEEev89Jb9Yu
	fVDH+P12cBjmGn8c4kbUIKZcis799wd6qUcCTLC1hErsj4iBeQhz5K39Q0VJPceF+0+2Z7NpYHS
	0vYJMM6V3Mz1/MaOZ3coRp/zanTqVPr6KTelpkZ9MknayRF/iDSt3RAfbHyn95TU7hp6el11VuM
	9AuG5wo/i3OeLb77CInUU7rqJU8HZ3UB5h4K7y8WCpqsj3puuo++8U0mc/bptT5h4ggOIyvMI6b
	Y/jGpWczXgpRByS1NbC/BPBA6BKVTXQf1r49BwmTyOWN3Dt9V6wtMW/gGTPLK0A==
X-Received: by 2002:a17:90a:e7cd:b0:39e:6a7e:ee18 with SMTP id 98e67ed59e1d1-3ae580a0206mr3341882a91.36.1793249006554;
        Wed, 28 Oct 2026 21:43:26 -0700 (PDT)
X-Received: by 2002:a17:90a:e7cd:b0:39e:6a7e:ee18 with SMTP id 98e67ed59e1d1-3ae580a0206mr3341852a91.36.1793249005981;
        Wed, 28 Oct 2026 21:43:25 -0700 (PDT)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ae6e7ac878sm2108575a91.4.2026.10.28.21.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 21:43:25 -0700 (PDT)
Date: Thu, 29 Oct 2026 10:13:19 +0530
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] phy: qcom: sgmii-eth: add Nord USXGMII support
Message-ID: <auLO5z9kXDaHl1ka@oss.qualcomm.com>
References: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
 <20260923-nord_ethernet_serdes-v1-3-f8ac1c487882@oss.qualcomm.com>
 <179318601645.5872.14222392238387100610.b4-reply@b4>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <179318601645.5872.14222392238387100610.b4-reply@b4>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI5MDAxNyBTYWx0ZWRfX6FDlsakrUT9L
 ZeSQY0GgoyIKS9QkYVrqgyd9BOAEaTkJTSm6oLfxBa39xS1qzjVfq/tM7uiVcDydnJ30M3phypK
 KnWPzlpNqQd4dfztdiTnCwkXQLkBuON+nkVORkyDYcnL7lEAN1x7B+ByY4DxGyWJ+Td/3m9rF4t
 gjpyi65NEAGk/6kBiM7mnpr8Kslln//0uUMY2jWYxniIhYF/suhl49BoyG4TdIyqfrEcJzWeKSH
 E1VcHHTogepa8Vjnh6i+z9meod3sANM2g60jeWWVCky330dWHi38GGhSF4AEOt5+i9UfiCnOXig
 XOONkioXzN4fMCsVKVpauyaGRajz/33IONGnkFBa1P3JNI3T2hjgoBzyCDewEiBUaTk1+3FXTGn
 1hu1bjk7uLSXWG6TzHHD4Gtvk75qTMjN2fPDcg0JM3j9MFw/xSoNgBOhDAiBbOyoH6hUxWsse1u
 lE9RdNB6dl7PnSWZiSw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI5MDAxNyBTYWx0ZWRfXzrpB96N1r5wU
 Zwjmuzy1I1SUB7Cved1MAAHQDkU017jU5J6HV/DWUHnFORt47Xg71vaNIpJGjICE7vS6Hc/D03o
 KAqnKISXKidswriPYqO0Bi10par6JFA=
X-Authority-Analysis: v=2.4 cv=LoAHWXdc c=1 sm=1 tr=0 ts=6ae2ceef cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=gdjW7vFeMs898lxTiF8A:9 a=CjuIK1q_8ugA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: 1WeygMLcyg80V2S4Nbg_Fuy-06g-q7S-
X-Proofpoint-ORIG-GUID: 1WeygMLcyg80V2S4Nbg_Fuy-06g-q7S-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-29_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 phishscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610290017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_214328_497862_3A7BC752 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, Oct 28, 2026 at 04:43:36PM +0530, Manivannan Sadhasivam wrote:
> On 2026-09-23 05:34 +0530, Mohd Ayaan Anwar wrote:
> > Nord uses a QMP v7 SerDes block which is an updated version of the
> > SGMII SerDes PHY IP.
> > 
> > The SGMII SerDes PHY supports multiple operating modes by programming
> > different SerDes line rates. The driver currently handles SGMII and
> > 2500BASE-X configurations only.
> > 
> > Add support for configuring the SerDes to operate at 10.3125 Gbaud,
> > enabling both USXGMII and 10GBASE-R PHY interface modes. Finally, add a
> > driver compatible for Nord.
> > 
> > Select USXGMII as the initial interface mode for Nord. phy_power_on()
> > can run before the consumer calls set_mode(), so this ensures that the
> > first calibration selects the 10.3125 Gbaud programming sequence.
> > 
> > Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> > ---
> > ...
> >  static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
> >  {
> >  	struct qcom_dwmac_sgmii_phy_data *data = phy_get_drvdata(phy);
> > @@ -275,16 +419,19 @@ static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
> >  	case PHY_INTERFACE_MODE_1000BASEX:
> >  		/* 1.25Gbps mode */
> >  		qcom_dwmac_sgmii_phy_init_1g(data->regmap);
> > -		break;
> > +		return qcom_dwmac_sgmii_phy_poll_sgmii_ready(dev, data->regmap);
> >  	case PHY_INTERFACE_MODE_2500BASEX:
> >  		/* 3.125Gbps mode */
> >  		qcom_dwmac_sgmii_phy_init_2p5g(data->regmap);
> > -		break;
> > +		return qcom_dwmac_sgmii_phy_poll_sgmii_ready(dev, data->regmap);
> > +	case PHY_INTERFACE_MODE_USXGMII:
> > +	case PHY_INTERFACE_MODE_10GBASER:
> > +		/* 10.3125Gbps mode */
> > +		qcom_dwmac_sgmii_phy_init_10g(data->regmap);
> > +		return qcom_dwmac_sgmii_phy_poll_usxgmii_ready(dev, data->regmap);
> >  	default:
> >  		return -EINVAL;
> >  	}
> > -
> > -	return qcom_dwmac_sgmii_phy_poll_sgmii_ready(dev, data->regmap);
> >  }
> >  
> >  static int qcom_dwmac_sgmii_phy_power_on(struct phy *phy)
> > @@ -340,7 +487,9 @@ static int qcom_dwmac_sgmii_phy_validate(struct phy *phy, enum phy_mode mode,
> >  
> >  	if (submode == PHY_INTERFACE_MODE_SGMII ||
> >  	    submode == PHY_INTERFACE_MODE_1000BASEX ||
> > -	    submode == PHY_INTERFACE_MODE_2500BASEX)
> > +	    submode == PHY_INTERFACE_MODE_2500BASEX ||
> > +	    submode == PHY_INTERFACE_MODE_USXGMII ||
> > +	    submode == PHY_INTERFACE_MODE_10GBASER)
> 
> So the driver supports all these modes for all platforms? The commit message
> sounds like only Nord supports USXGMII and 10GBASER.
> 

That is a valid point and something I have been working on for v2
(Sashiko also raised concerns about the possibility of the existing
platform using the offsets/programming sequences intended for Nord).

Going through the programming guide, the existing SA8775p PHY (QMP v5)
only supports SGMII/1000BASE-X/2500BASE-X whereas Nord (QMP v7)
supports SGMII/1000BASE-X/2500BASE-X/USXGMII/10GBASE-R. Therefore, we
need something like a supported_interfaces check for each platform.

	Ayaan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
