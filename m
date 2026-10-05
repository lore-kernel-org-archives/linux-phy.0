Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48FBECA5FFD
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 07:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9C0babwTtd6qYgVPb/nwzvX4BXl5maF7EOsvs2oYMg=; b=ymzIBadpe+MZDG
	eIB6aY1LfIxeln1tfvCgVdSEb2Qnv7fkd3Op3K/KEKwOvi11MbxWXssLP/tRIwoku75UIhxXSUaGK
	HNjtQ7YBD62V9pOIgBlavSSqV84U9VYmQR+8Q9sCclMU/x2fAzK4Hgsq62tJUA+Z7aFZs4JgYZJMG
	UsI9VabDaiKMNrWMiJDzkOk+2wlmhlva0Ybiqk3n4lZ/zFjDKa86+yZbkTSkUEEz3ckoWYDhJHa9q
	jezjJumATuLCnYqvixXhWYG/5FimYB7pVs3RHSetxGIoT4RZVcSbgzrsyP4sR+zrWqz3XIA+UwMAp
	WrqBBnD6wjxrBmQa+twQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDcrl-0000000Fm0W-2G8q;
	Mon, 05 Oct 2026 07:12:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDcrj-0000000Fm06-1Utb
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 07:12:04 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69510TPp931752
	for <linux-phy@lists.infradead.org>; Mon, 5 Oct 2026 07:12:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=URjcDDJA4qfVZPodw2oXAPuE
	LBq3OrBWrRQkdxFEpqw=; b=OvuCFon9JXldwHpbK4PUuldtPdxnIe64gDuf+r8r
	pj6/nEwp5kMObs4IJeblVu9vkGYRWezmnMbmpOe6HZE+chwzOCYse0qXdo+fid4w
	+ijKKln45MM3uPBhq8upvwBT4MVjmEff+IsP7DMi0T1cqO84Xs/myxuhtFLoEIab
	D0ruu7vnb/uArLp48eup38SzLp4qOscMLzk1hjv5Zq6DEvoVO3pye9CMKPnFR7EE
	hcl9KyqszwnYZNjB0yBhHdyoNydS+M6C8X3QPblaV2jwhuR1guxE6nNVEzuFTytZ
	m9P8dJ2wwj1ALXHbKOvkpYoP+BX1wvdt05iW9CIKS51wCA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2sq8vufp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 07:12:02 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93ca9b53afaso383488585a.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 00:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791184321; x=1791789121; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=URjcDDJA4qfVZPodw2oXAPuELBq3OrBWrRQkdxFEpqw=;
        b=KDHad1kDKHu11UhK1Qbtc8kBjnFUEXKI/U8bDpvf5c1kxU1Yq+7Lkap93hIxDoM0fC
         zwYlFsVA3TUyjjbjokl5XMgnXm6P9LeF2Pfm7IZ6AdlgDbsq1NqUd0SubEKw6thMuvRA
         GZnBUQUn1/UCh7t1tAD/UN7QINsR1e+heB4dVGFnnLTdiNw8RjPdQZIp612k4xcCCqIq
         x/EiVYnnIcJurus0u4sU2ZHPhMBnXiS9z5Jhwtg9YP6Q2A1T3tFe5jh67IQcbO3D2yHq
         pv/GYDOCtu6GVOTIvHR6LcnXIo27RoSqG4HIRKYO57Uh30odhiolpbSv+KrhdY4WsUkA
         E6TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791184321; x=1791789121;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=URjcDDJA4qfVZPodw2oXAPuELBq3OrBWrRQkdxFEpqw=;
        b=dRguXCEQ3Za9vOUKsdi5kH+57J2sz3ZkC2CK9Nhza9Ga66QZi6uP+MuiVBjLUVVt0x
         Rsij54SnjdnnjfR4DhokXcGITKWm2tZGdVKKMXUWP5aZG2r+9TNzOB1UsSqtTkt7D72E
         Nb9rh0eDpTcYRlbhppt1BZHM/gpowyOYm0FECq5o+ZkGbWP2lnzLA0J/HGl149QXnV3P
         zPzkWBByEb40A3+8HmiA3peR3k0YDOS+E22fm077fVCsf6lfFMuhHRippBttMB68bN0S
         gbTZAY0ZTuhn2Lzp7jIU1YuLnYOtbv0rYTJjRpCWMZCeZ+ENHKCZnlemkEsIfUGtAtXG
         zjEQ==
X-Forwarded-Encrypted: i=1; AKwUvBx2nPbwDPweiZr8/o8WX13b1AsoC4F8XLBYFgXmSbmFbf4sKPbE0VphXGRjPLBYB7Amg6KgEQv5tj4=@lists.infradead.org
X-Gm-Message-State: AFuF++mlY5QEb6twJR7yRPapFd3pmzXUI+AEH/leZTBnny6mp6E3+6az
	+Kj/ijEk05A1WK9i4eNKkz2w/mFe44lXAshGsCcaiZuVTgZijhQ5Ekg9vEwIzZqK/v7w3Q9VcoZ
	YyXLaZ5DznRfAEEwA45ONxWFfRsiKs+JMETQIA8ly9Q9K0s+u4ee5iX/bPNPUP6cBniei
X-Gm-Gg: AYBFou3/9vDCxk/zb4o0N3RrQEML8Stw1kD2UjvNREmFuN/f8l0W/F2i+sTFT/ddf2M
	j4U71Ee1U812aBnMNqGS1LOVSdLC6urxQf9NdgLIPadNXVh2NKkerFeLELEN+IBnLsIOoYHYsbz
	VQWuiQ8Vj2Iczp/DIvZ05PSetRu2VqCeAEm6+9USCNH3p1Yn2bxb5n7FESVWgCBydGaahGwSFpu
	fQEykkPAq0/A1ABRu/h2v9uZyNDABFwxmuej/+xXjOzJdre2H/6XjsgxSLdjQyf8a51WgJJfDgi
	s6e21zuz+4a4ZbIS4J868E6Q9CtWbVD5cORnjmOM8AY7Y6B8NAqwbu+opHZ+5BX9SwiU0FuTfGT
	C8idvHfGmuR3z4XvNXGvci7wtuaRoUgqKObqBwBTkZxb8Lh/bkLT0xtYvdCGQRxWn9jCHc2J0ov
	1awEnIXGQLDDY/
X-Received: by 2002:a05:620a:4093:b0:93c:2ac6:37d1 with SMTP id af79cd13be357-93cf1a0d7a3mr1788793185a.49.1791184321611;
        Mon, 05 Oct 2026 00:12:01 -0700 (PDT)
X-Received: by 2002:a05:620a:4093:b0:93c:2ac6:37d1 with SMTP id af79cd13be357-93cf1a0d7a3mr1788786585a.49.1791184320953;
        Mon, 05 Oct 2026 00:12:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5bb7c78bec9sm2935220e87.27.2026.10.05.00.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 00:11:59 -0700 (PDT)
Date: Mon, 5 Oct 2026 10:11:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/6] phy: qcom: qmp-usb: Add IPQ9650 USB3 PHY
 configuration
Message-ID: <nprwacqpxrdobhubo4crfgtbqbx4xs3naxlbazslesonb3jyo7@nvsmvy7av6gf>
References: <20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com>
 <20261005-phy-v4-3-b04c4123ecb3@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261005-phy-v4-3-b04c4123ecb3@oss.qualcomm.com>
X-Proofpoint-GUID: jW0v-wlThxjRsg_Q7OjBzn5KZ3RiIV1d
X-Proofpoint-ORIG-GUID: jW0v-wlThxjRsg_Q7OjBzn5KZ3RiIV1d
X-Authority-Analysis: v=2.4 cv=TKzQ2Fla c=1 sm=1 tr=0 ts=6ac34dc2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=NrRSp6wvv_rQV2fpQCIA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA1MDAyOCBTYWx0ZWRfX6TAXWBiHhU7+
 neGAQiBNNhjaeTCTD6KykU5wE1DVYMXXMpovU5mawO4bam13VeGPP1n7i16aus549vnjHPwdiy+
 RLevZy83NA1i9QZLaApgvfNitsUjwY4PrBuQQzlRjhnyMf/9ufSihgAHR2jO9sjyQVHfn+bJeu+
 6N2ruyhkHzfnwhxDj8qLR6Gpv/bqwcVffF3Y3lQ70bidFKvdW2fsrEbkvYCxy/X13S3u9kOWcZz
 0Jwt0ZHFxxbSSMWxRLHEpgaySgnhOqst9xT0bnyvztm8hKGeL9PfvebjKEukncB99Ra0XcYRp6c
 R79wZlzzapCFl4CZPyoxB+NS4cHVS8y6n4xBSy3obqGX98E9QVfXBHj0hvpq7+2T1IYCe67o2H0
 Hs1wbA23DdW3SVva8REHM+m0v6zpuM6tMSxxCZuGNiQKJOWaiL2QOe1N2cMbBk2p919LC1VnG6Q
 awByy/g5IQ0SLwXW7LA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA1MDAyOCBTYWx0ZWRfXxAIFxCvn3bdK
 EaHUvxbi1rJlH5joONKGFycIM2Udq5Bk7HxnPWClJcoIhFfb1vpauV9E0b6esVeXkQnJIs50rJd
 6R5s5BinABbMxOsroYwSt5p7ivSU/5E=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-05_01,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 suspectscore=0 phishscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610050028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_001203_750264_079B445C 
X-CRM114-Status: GOOD (  13.56  )
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

On Mon, Oct 05, 2026 at 12:06:28PM +0530, Varadarajan Narayanan wrote:
> Add the USB3 QMP PHY configuration for IPQ9650, including the SoC-specific
> init tables and compatible data.
> 
> IPQ9650 uses settings that do not match any existing supported SoC, so add
> a dedicated configuration to allow the driver to support it.
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 118 ++++++++++++++++++++++++++++++++
>  1 file changed, 118 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
