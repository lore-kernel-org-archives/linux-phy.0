Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A154CAC597
	for <linux-phy@archiver.kernel.org>; Mon, 15 Sep 2025 12:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=seHAQI0JragcCHWHPPS7XQom22CIn4PaXlL+heDwa2U=; b=kY7xNxE5xAyP3j
	37OnEv5ICkhvhY9hDRb3wbNZ6lTC6jeedj9q37+Zyp/fx4JQI6UVyvlhCBlaNLAJfrfGsuXF0nn1L
	tCXGGEckeH78HJNohQBfdZBnSZZ+nwX9PgIcI5gLZRK0JRDZQXT3til43GmHMDVnr3KUv0CZozlP/
	egsh+9SWMZqSnvpYHYrSSyM4w2orSljmkxADkZf8iyfEeBDFPS8tIFHmbP7J9T2o1mBc9Eo0aJAWM
	fxEo3UsZm43IkkOS4/JFzsbfBO3RFm5cF6gHIP3XR28VlZBlpP4mfNoMYPzZJpRY6yN9uTwQeXY0A
	cjJwyPYke1oqxGKRbYJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy7uf-000000043RL-0CE9;
	Mon, 15 Sep 2025 12:02:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy7ud-000000043R3-03YI
	for linux-phy@bombadil.infradead.org;
	Mon, 15 Sep 2025 12:02:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=IvAeXnBrUm3WtAxyNHUahdmztvfLEqQROq3blJbaPBE=; b=XLaW+2D/LuCyNW68rGxdkywB6+
	3+ei3c1BttmvoUjN2STh2b+BdVWCD+UgtJj1N9WeSFJTCUj91IxwZd/EYfnFazFPqsixQheO5Qq08
	Gae1IMv4X+jAGc0Ut0HfFb59BVH8/R+kh4Ef9ef+NqjXvYbLCHEdXrnoRpvlZdWdRW4Xh897HPVaS
	2ulS8SsViKtDP/FgvDh0nc0I50bQFDyEofT4MPr+nBZajPzfdri8qCeBrB9ycXCMiz3hg8nNozOSl
	ODHfsMCiSjNwpcqCEIKBAk24gGkgyoszUVhZ3deBMOmvkq2ll6LR+IMiPKAW23DyhjrL6mn/1BVzZ
	e21MZbsg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy7uZ-00000006xxt-3VTU
	for linux-phy@lists.infradead.org;
	Mon, 15 Sep 2025 12:02:25 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8FgkW020553
	for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 12:02:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IvAeXnBrUm3WtAxyNHUahdmztvfLEqQROq3blJbaPBE=; b=moxlKa93gMoU+EA+
	pPc8xR2QA7jLN4py33tSgd6PAQWu3exrp2osAqFc4rJh4hH3YVUl7p8Kd/06k6yf
	RUjEH/fMsY4C1A37rD4e8YJ/BfpqADJtaPT0wS2XQlvPp3yqLExlzDM/1lYUebxd
	z3hgvQQCpvp8RoVhF8/pYmeXr9h4+TY0U2WYlHB1Gyrpmuo57xcKt5u7LW8Jxr89
	1skN0wqWQkD8ydd0gnHU1xmQEW2V+K/ALZIdB4FleK/ZufdxfqIyeN6n779bczUT
	ZSk/Rn3YXBCr2p0pCjPWect+5M7WedM4awVW6QV32zvoeMQGySTYzCAeKTtJuK5D
	EXXoPw==
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950pv4trt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 12:02:18 +0000 (GMT)
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-424019a3dfaso10080385ab.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 05:02:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757937738; x=1758542538;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IvAeXnBrUm3WtAxyNHUahdmztvfLEqQROq3blJbaPBE=;
        b=R6eW2OYWVWC92viGjY5f2UJdEzxgo3L9wGKgSfEjsNzgsM+Lmw1hjnm7BPIj0/o0SY
         3ZOMd9UGzLamGcIhPsdIJM4WMSwKG6CphF0t802x/rlHdw+xxxNv7jQupeNXZrFUFVPa
         MWvaVpz2H+/S4+aSQlkxGDmiWdtzH18n9tGE5AyRuQBXQpalnDEXOdu2GG/hr5uk/qG6
         VaNLzBgM01vu7yoZHvTEvccHZPhd6Zq/XUZHCdnanefiIl0Ea98hFdQj7OJQkpbFm1HN
         MVYRAr6q5GioEEY/nYDfSP98LlvJPQEmj/Yi7TJcv01mATFi65BKFQEncWSeY5csjf+k
         nRqw==
X-Forwarded-Encrypted: i=1; AJvYcCXr8dcC1fnIXrSsPXUi7hYZCKfDNfRFxoqa3+u1bbecs9Eq1ywzWdszUfhe3C+fMhGs1K6W8mOHE4s=@lists.infradead.org
X-Gm-Message-State: AOJu0YyleOXkuUM0HfvXm9ztuQ7jNYLXkgySZfemyJEHDkhoCUodXoMH
	rKKsTdz582ll//6FH8YLPZwZ6fWdfFygkImujAHTFsRF3xN78xh8qGbjrWWRqDDj4d2pvlIyRX6
	as5WVZ/U2a9T7pCE3rg9rrqlBkxB7OH6n2ZHkn+OzqbppI6g6K1K6VrX/rm7efwryNVmO
X-Gm-Gg: ASbGnct0J7dL8wt00jVE/p4GyvyyDDgNSZi+ovuoOmG+D7ziUfQJCLVTuN0OP5Tlq53
	yaodDujI5SPsrtYay5f5NWvio7C/Q0O8J4QF+M6CfVtOR7klFrUA28KqK78jBnGKFMhro4cycdw
	2ywOWP+dY7zXdyzLuWjR3rAYT0OZemSd95hX0+hggx/e2iSFHQgW40gF1aq80pJ0WNsQbwiI9XZ
	rF0jHpC4a/5YIIOB1H8MBI9PVfemCZYU+93uTYzEm9Xz8TLE3sug1r6ebqSSqo5nRJy8JEDP1Hm
	s/O6swF2xMJ3k3AdcmOd6Aj4hnyz3tOSQnbo8bjb43vqgyIZ383qstQF3nRXNSTraXdBIbRh9sX
	K1h5nFUp7AIrHCq8ghwLwA2pUliTRBCtmJyH7k0gXjGAvfHJs34Jm
X-Received: by 2002:a05:6e02:3805:b0:424:db:3f52 with SMTP id e9e14a558f8ab-42400db43c7mr31984475ab.30.1757937737602;
        Mon, 15 Sep 2025 05:02:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwSFZp4+rn504zHIkvMkDte9o/xIPIokYa2nEOEEH2hcptgXuwuAlyF+4kk8sIPNl3j0f/aA==
X-Received: by 2002:a05:6e02:3805:b0:424:db:3f52 with SMTP id e9e14a558f8ab-42400db43c7mr31983785ab.30.1757937736970;
        Mon, 15 Sep 2025 05:02:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-353725e1bc6sm19307291fa.27.2025.09.15.05.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 05:02:15 -0700 (PDT)
Date: Mon, 15 Sep 2025 15:02:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 07/13] phy: qcom: qmp-usbc: Add DP PHY configuration
 support for QCS615
Message-ID: <yvhj3blwga7dkc2cr5prc7covfcw5lrg56fptynn2j3pbmtrk3@el4qlbecbg2o>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-7-2702bdda14ed@oss.qualcomm.com>
 <sy4kyh3kd6s4nr75unt5r6gxnyeqq6bfjj4tizwiw2fvbw4ala@i3theqmwiv3d>
 <1741620e-1f92-4db9-8135-965a96f12590@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1741620e-1f92-4db9-8135-965a96f12590@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: PaURu9VbH_Rhpy5p3bHMNc_E-6lk7C5d
X-Authority-Analysis: v=2.4 cv=PsWTbxM3 c=1 sm=1 tr=0 ts=68c8004a cx=c_pps
 a=i7ujPs/ZFudY1OxzqguLDw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gzlAuExvAKsCTSaEeBUA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=Ti5FldxQo0BAkOmdeC3H:22
X-Proofpoint-GUID: PaURu9VbH_Rhpy5p3bHMNc_E-6lk7C5d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyOSBTYWx0ZWRfX4c9DSl/ODsS3
 6/ETPeKzkDFSsegwY6eORkgDymSOxAh5imvGYw7YNTSlgh9CEUmbJ8USQyiYZ3mj84ksQsBgTRe
 bg2FpQUbUuzUb0mhY8z4It/sXdpmbjJTJt7TGWZFWY6czaKsObY0Jf44C/yDO2fb9BZgEV1Lz1u
 l+og5s9XYO39eillk8mCiRqGt4IxSXY42ivWcZ60XQYjzPn8lOuVNWIjHoTW2Ms5WpYZ9FTDzpA
 BEI8gkRIBaJk6PoSzItl8zRoGB2Wi9aSJpyvHaI11qfSH1OZY6kHKAz4WDgKSKkFbyZtMBo64eh
 KbUGyb2Fkb+JhnHBm0HQgJTZPkxRQdrGfJe+b3+BI/w+CRv1K1SWpMW0XeSamtx7fFutcIXOG0z
 MZbvEKSA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_05,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_130224_172428_934AEC78 
X-CRM114-Status: GOOD (  22.83  )
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

On Mon, Sep 15, 2025 at 07:29:08PM +0800, Xiangxu Yin wrote:
> =

> On 9/12/2025 6:12 PM, Dmitry Baryshkov wrote:
> > On Thu, Sep 11, 2025 at 10:55:04PM +0800, Xiangxu Yin wrote:
> >> Introduce DisplayPort PHY configuration routines for QCS615, including
> >> aux channel setup, lane control, voltage swing tuning, clock config and
> >> calibration. These callbacks are registered via qmp_phy_cfg to enable =
DP
> >> mode on USB/DP switchable Type-C PHYs.
> >>
> >> Add register define for QMP_DP_PHY_V2 series.
> >>
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h |  21 +++
> >>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c      | 251 +++++++++++++++++=
+++++++++
> >>  2 files changed, 272 insertions(+)
> >>
> >> +static int qcs615_qmp_calibrate_dp_phy(struct qmp_usbc *qmp)
> >> +{
> >> +	static const u8 cfg1_settings[] =3D {0x13, 0x23, 0x1d};
> > Are these the actual values or is it a C&P from the combo PHY?
> =

> =

> These configurations are the same as those in combo, and I have compared
> that they match the downstream sm6150 project configuration.

Let's keep them as is, thanks for the confirmation that you checked it
against the vendor kernel.

> =

> From hardware programing guide, only defined AUX sequance with=A0
> DP_PHY_PD_CTL set to 0x3d and DP_PHY_AUX_CFG1 set to 0x13.
> =

> Shall I update table to {0x13} only?
> =

> =

> >> +	u8 val;
> >> +
> >> +	qmp->dp_aux_cfg++;
> >> +	qmp->dp_aux_cfg %=3D ARRAY_SIZE(cfg1_settings);
> >> +	val =3D cfg1_settings[qmp->dp_aux_cfg];
> >> +
> >> +	writel(val, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
> >> +
> >> +	return 0;
> >> +}
> >> +
> >>  static int qmp_usbc_usb_power_on(struct phy *phy)
> >>  {
> >>  	struct qmp_usbc *qmp =3D phy_get_drvdata(phy);
> >>
> >> -- =

> >> 2.34.1
> >>

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
