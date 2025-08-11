Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 352CFC87FD2
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 10:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zlzIoKWrz7/mBXOqQazdlfSbBYCbymuOnosRzMm+fEU=; b=IsR3amrbr7NBPF
	d7JkjSjMuDPZV069pBtQpaxd3BJJJ407TgwoN3uHGVM4FKjTdxxiMjHwd6SWOB3qTnrOEbX3QHkI2
	htYPlOvqyE1d4DCKJm+xO3eVOxsJTg0uQBc4YOmycUlYEr4H/nMJM2DC/AeNy6/bbH2Luxvncj7du
	z9kblQubScszEvX/+rN6CJcnAf6as/MQn8YhCIG5k88oK5ShuKinGiYocGhX76+0Ess+wPk4TV+63
	lJ2dN7z4irbSaj7+ilCpWkBPddqur7wPFqlkUJg1LzwOm4v5Iew8oUBb4KhB75lCLIVcr03Zsnipm
	hAlSwbZd+jskYpET1cfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulQC3-00000007QQC-469K;
	Mon, 11 Aug 2025 10:55:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulQC1-00000007QOj-2BjP
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 10:55:54 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9diQN016035
	for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 10:55:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mfNS104sZvUDxiTcLFxI/nq7
	cWMQCwJ3YOUX3c0FHSE=; b=Xje/E3oFVs9vdnrDl6g8LqFPDlxxovzpfF3DtGBI
	coW9ZStep+39hJVXf+ZTRRDPVQc+mn8X7kWnebVhd8CjTVDZBAHrZnaEfH98mnbK
	wf6jDOPJqt79qf+zlxmYfxknmSPDPUnGciPjJ9rZHD1J4sILU7HGeZgVLOms208b
	6g9ssb7x3/DwraUbRMrq51yP/6MCKz19321gq3BepgXsmJGfBbJftNpspMBejuDb
	v+cRInn+48Qntb/EFUa2WL99GbJkm1n2zYXWDbRWa58/2GHHXRJbTngb6erwxXDy
	Zq5WhoBYHpcZGSK8aNKcbOCHVSTfoQKBRfaao4YmpA17oQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dupmm7k6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 10:55:52 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-707453b0307so96236726d6.3
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 03:55:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754909751; x=1755514551;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mfNS104sZvUDxiTcLFxI/nq7cWMQCwJ3YOUX3c0FHSE=;
        b=kpdorF9H007y7CrUbwg8JQ4q05Do2imroPE+BsrKfLh8EQFATZUiG2qsZE6rZkSrh4
         AbGoijLtV8UCsrsg4hG9+wZxJPujoJwJZESMXrahvV1nnx0rooblooBqFzTdBaGGcl8m
         kUqrqSB5kswCuX2U5+10EY98d9Mk/K5m3ZdiHKTzGjq5SCe/mlXB/vZCi6SriEMareGR
         DzP0Z2huy60WWrZwQ0Lg+V5cg2erVxXU2STsYCfgqdMPzL6xTE3hGCFM+0BhNCfu+7n9
         Q9KaNou3ggAlSjZPcUccPKacmKAwl8vaw8yTgxFv0pu8tKfHmkOuthGu/NURHkBV3ndB
         QTyg==
X-Forwarded-Encrypted: i=1; AJvYcCUIulK9A2/txfxQ9Iu83EmYztd0Lv/jVgzFCkI0ENEoTgmYzEQhtO0wUG3Fssg7P0N//xm0+Cjzxus=@lists.infradead.org
X-Gm-Message-State: AOJu0YwxkoLHYutPPw8DQRGC52fMD3ogeYQT2UCZI6CAlPloT7Nm7kdm
	AA3l3IKgqSTTxhAUAov6V5ERMh1wVlApvREpC870DX4Jmmwvi6RdErd83q+TJTI5rqPCkQm1kN2
	xKr+OR8NIEXmgROzNKVpf1U9gHA11rR6Qwm7eUS0gUAPfwhhxroclQZMsGxKnMja+Bm0s
X-Gm-Gg: ASbGncuwJXOBC38IKg8IB46TIHkeuQnXTM+Pw6F7u+E9o3GDVUcDURPXABDK4PHwCjs
	MxrXES59/xEzXeRdP0ipWJsa3bNxnnYMKU0/zJfoD6nHD/CmTsLNHeV5e4GRHrKMNXt3f/02xJz
	G2zMpdLiyDkeFmStZBaW83/PcXdQe2x9CZmJB5UHWgHAMrbmx3eLTpLVCQi1r8TuFso26kagiKE
	Jm28kqBNEzmQSfPu/5CEYHoOPSLjg7L4x/VVlhdW8GOkEuCGnxRrcMWQuq8tc/qLs9u60I2VUed
	THaOWA6QKrNHf6Eg7L5ucQURbri67Mzzt+UhUb+LL8PJny7961u3DrQokOPjys4V26lxteYA+XP
	VRuvpJb4+rSBkZKCIjvELpQBbURklcIcAtWKce9WTD2uiUL6l+Vf7
X-Received: by 2002:a05:6214:cc7:b0:707:63b8:3d46 with SMTP id 6a1803df08f44-7099a30512cmr137320366d6.30.1754909751177;
        Mon, 11 Aug 2025 03:55:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJGm+AQRrMZQkHwEUDLQJriTk9mSlKcg15YnclWYqXloRwI6zRHEDtZsJFogLVGniPGmspvg==
X-Received: by 2002:a05:6214:cc7:b0:707:63b8:3d46 with SMTP id 6a1803df08f44-7099a30512cmr137319866d6.30.1754909750630;
        Mon, 11 Aug 2025 03:55:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88ca334asm4229151e87.131.2025.08.11.03.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 03:55:49 -0700 (PDT)
Date: Mon, 11 Aug 2025 13:55:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
Message-ID: <y4yiyokoo7fclwlpyhct4o7mt6swustuciigqnte5pruust26q@ryvuwpd6h4qm>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
 <20250807-topic-4ln_dp_respin-v4-5-43272d6eca92@oss.qualcomm.com>
 <ibrupwvn5frzb4vo3eukb7p7pzonaxwhygshz743wmyrbprkcq@xcpt4ryzvwqr>
 <619efc83-37f3-4b4e-b756-c53ecd2f6867@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <619efc83-37f3-4b4e-b756-c53ecd2f6867@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bY5rUPPB c=1 sm=1 tr=0 ts=6899cc38 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=mUy4j-dTXB4InB_98JkA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: qbVSJXrZn3N6Ep37cqmcdEAySaeqERqY
X-Proofpoint-ORIG-GUID: qbVSJXrZn3N6Ep37cqmcdEAySaeqERqY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMCBTYWx0ZWRfXwL7+tf4oWTt3
 p7GP5WDByGHxzF69aAC9XkzVPwx8iXEzbBNLk/MRQb38xcvQM/SMCeYShCn3HTZiOJkQBVFlLQi
 DfdYtYFXs0/0UBZG3tyd3csWCwQGOYvatcQMiH/w/KMSqdjX+1SuuonvS0VA48l9IYlzRq+YFPI
 IwxfHC3ln1VM3Ymj+WWvjYxYEeitiZTVGp/bLIAbqqs+YMWrJXc2UhrEJY4HWw+LOLkOWIjUazd
 i5SIXFYkWbDQ/CNQW2bYBK0DbcyFkxd6AUdNmEkE244F4CToR1ggwfMjP+vZVPHxF8rnc4BDtL0
 hyYon/5xUlPaFQXrG7i6dVZ23RHlmKns1eTMbIbwXMy3GEhwgiIuBpPWRISH98Ga/BbfZXUIzmO
 juQO3ytN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 clxscore=1015 phishscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_035553_681988_CC2D7993 
X-CRM114-Status: GOOD (  26.43  )
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

On Mon, Aug 11, 2025 at 12:37:00PM +0200, Konrad Dybcio wrote:
> On 8/9/25 10:13 AM, Dmitry Baryshkov wrote:
> > On Thu, Aug 07, 2025 at 06:33:23PM +0200, Konrad Dybcio wrote:
> >> From: Neil Armstrong <neil.armstrong@linaro.org>
> >>
> >> Register a typec mux in order to change the PHY mode on the Type-C
> >> mux events depending on the mode and the svid when in Altmode setup.
> >>
> >> The DisplayPort phy should be left enabled if is still powered on
> >> by the DRM DisplayPort controller, so bail out until the DisplayPort
> >> PHY is not powered off.
> >>
> >> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> >> will be set in between of USB-Only, Combo and DisplayPort Only so
> >> this will leave enough time to the DRM DisplayPort controller to
> >> turn of the DisplayPort PHY.
> >>
> >> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >> [konrad: renaming, rewording, bug fixes]
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 118 ++++++++++++++++++++++++++++--
> >>  1 file changed, 113 insertions(+), 5 deletions(-)
> >>
> >> +
> >> +	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
> >> +		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
> >> +		return 0;
> >> +	}
> > 
> > I can't say that I'm fully happy about it, nevertheless:
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> IIUC we'll be able to get rid of it after the dp rework?

Which one? The HPD? not really. My unhappiness is about the sync between
USB and DP. I'm unsure whether we need higher level of sync for
USB-or-DP PHYs.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
