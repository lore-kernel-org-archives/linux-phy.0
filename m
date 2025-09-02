Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F10FCA0FFE
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 12:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t7jGruZL5ZirmuzTNmiz8qqgOjEA+vfbcOdHQT+xcT4=; b=UENakvJf0Hmp0J
	DzxwzC9mTii7bm35WGWF3N1+gbQ/jsWb4N7t2zVGj91btDnuMS+cmJp/RV1osJo16ICeoOv8M+Zt9
	aSuMy6uetKfpPpLUL5r+dxIgy4annwEWAO7ujtIctgRkJYrvro4YTSnKrn37zl9D6Gyd4PDDlhPqa
	BZzMpYBRoXVwCDNrs7HeV2A+mhOcjvwSWqHxTEXO/TiVEThEE0P/vE3UTTzP+AVT2UxGygyrF4S/L
	1dJyQb+RaqeEqDu6ZXkNmLMYr9p4fURFK743D/weNrof0ZU4sDupPzD+YKcoBSHZzgMw2N2wQHt1l
	ekolN82iOQxeCaBPfVtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQ7Q-0000000HExr-1OYO;
	Tue, 02 Sep 2025 12:28:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNEl-0000000GLBt-1Lvk
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 09:23:36 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822Skob026392
	for <linux-phy@lists.infradead.org>; Tue, 2 Sep 2025 09:23:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ch/LhY4Ftoj00uev1yGdlcFF
	tJHZQ9xg8w0D9kgtUtE=; b=iifSQy9p3IEu5hNQ/ysGtvHwuEFAAtMxJbSFFxCS
	1HDtjhOMn4NA5Wwok95SBz9wNOiakQBHMMAtX9eObaDZT7dnRahZoOHXnTrMyVQD
	+zKZ7DKnPxghc4nF5imAfu1x+SY6qI6m3CBSh7V0QqIMgWeOJhFBFqUWUBmN/chX
	vRCgSRsi6u0n6lXU9UbuO+Iyz8cw/xKJg2lNUscGlabDJlZt9Va4jKcW3u/TO6ow
	d/MAq2L9C+wAXlY2vU5r3M+bj3qmjfb0oDEEDJdGRWvmbt8olJacHDFZCYwB6oLS
	Oh3G0mT8xmIm9jo3HG/t305jCNRGdvOVrvyBdH/7+KGb5A==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscuya1v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 09:23:34 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b320a0a542so51318851cf.3
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 02:23:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756805013; x=1757409813;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ch/LhY4Ftoj00uev1yGdlcFFtJHZQ9xg8w0D9kgtUtE=;
        b=Zetmq1KeUm0JJtGNzn5pknrJWkRs0pz09MBtNZWcIIdRmnOE00E5+aqL+gfRM3xYY2
         fO7RIX7kfdaJ9yoWVHU1WpQjp4SJaFFm79spp1y2Hzv4zieNRqJG5GC0Oh8BX9iRwWBy
         Anp8HC0/MVZsndhl4nWjWGDXqQ2l+vWVX/Un+Wj5f7AH7vwVO5S90mLkdRsJHiHtttaH
         EH0t0uUBoEpz32CxOqGppjH8zCFMBFsPjbGTMf/TuookL7U5apRFeiYV/573pilKn/jG
         MiBkDvJZ5oLjujbvr80LksDDzzuUunaQUYoqcGjs7zLwoxkmSaElPDEMHJHLAnyNtbft
         IcNw==
X-Forwarded-Encrypted: i=1; AJvYcCWf2ZXh9tNzAtQ18gfCtrjDkGfRUJxUXXuEow/r9Ykwx7mHHIKt7VmuxMnMvewJ7y9P/AyDLi9WmHc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzRbVeuoAYciCelvaOiQTFsXg28JNNE5GXyrzdluV3m7tmy17lr
	wTjtlfPFtFiIYkBYWzglEWhcphj3IR0CSzxcrHBmIB+/vCkdl1bHv9QkOLuLTMOOqwxKNefvIFn
	cYlr4oOvvb8M/EH5nHXJQtjV52o3s6yIQFyQCozPYGsMQOqmmHZji1YDSqHa3/zPpOBeqOVQ4n8
	/2
X-Gm-Gg: ASbGncvo1h8Y41EN6xEruR8ATB5C1xcri8O/DkGMR1DsGBxB/Zmr/Q82c+8V1WS0K7L
	sXm3esdp1DKgQwvUmg4UD+QiqbXI9ryJLZ2hxOXwiCsCzNB7XXw79fernxKFAgZNIdwGg8P5dId
	haEBZSWMCOLUWd1/z9D/ozw2n8osc2ikrjvqN+xYGIYjpQgvmJ6H09pOg9jMCc+InXgyhreOvX4
	UgvY11gltQWxCCEUVhDwkIo5+zVoQPbDw7/gFdUuG6jkUTBzXUCqkm+zzPe7Q1uxr7U4WPwGMPe
	pVFbNPilMvGocjmlfJ6xX8YMGI64EtN4ilLHbfP80/lz4Gpg2XnVU4FAIbdw6X/37tpw3tEz804
	tFOJm2DkHeXEe1dydr3yhHyraq01PNNjNCcks9nCTre2FhU5iwsyC
X-Received: by 2002:a05:622a:104:b0:4b2:9bd2:8176 with SMTP id d75a77b69052e-4b31d84444emr121691161cf.27.1756805012785;
        Tue, 02 Sep 2025 02:23:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECcy5unw6WFIHBHq5iOWTGUfamDps6b170cwBunY645CsFBbNJrcuVd5piaxYGqW0iNZ5IXg==
X-Received: by 2002:a05:622a:104:b0:4b2:9bd2:8176 with SMTP id d75a77b69052e-4b31d84444emr121690831cf.27.1756805012345;
        Tue, 02 Sep 2025 02:23:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608279ceb6sm546116e87.100.2025.09.02.02.23.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:23:31 -0700 (PDT)
Date: Tue, 2 Sep 2025 12:23:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/5] drm/bridge: simple: add Realtek RTD2171
 DP-to-HDMI bridge
Message-ID: <w7lf26lyltduionxhckld76xhi4dsxzhmyfzz5notzt7cu3ixi@xns65dvdejb6>
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-2-f4ccf0ef79ab@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250902-topic-x1e80100-hdmi-v2-2-f4ccf0ef79ab@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfXw7LAsgc3XD56
 daqS37OaEHITAePV6K/IIUiG9MdRp0jDhcHPfN67uMd7Ntwch7T9uaeLDJLbz6LSA71AvQI4A8Q
 eHf4rytRw4DdlT4xasRTXNgwif+en0XBeovBFHd33WLQXkMeW3g7toQoJ77pD9kbwm37NSfuRu5
 6shaxo2bXXlxBWDJTk9mDmh2Vqwq40R+J3186abN53aeaZOyw1xH88d74XnJah21GBw1bN3KKK0
 1YEF0H47iy5vCIyTkbAmQK9T4K8g8gVYlyxDqgaQQQrE4vnODxLPZNLlsFXU4VaC/DDqGssRkF7
 n9GTQXQC1Njck2+YojlfRvLwFQHViBEyUkeKFZ/HPtX8ZVFU3TYMengYWTBUNnvranxIm6c47dK
 3zcgrQq0
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b6b796 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=eHZZoxIKThfaNsFTWoEA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: eSUXporuk4i6hWEpKC-YxdO0sLnlz6LM
X-Proofpoint-GUID: eSUXporuk4i6hWEpKC-YxdO0sLnlz6LM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_022335_514709_6AAD13A2 
X-CRM114-Status: GOOD (  14.22  )
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

On Tue, Sep 02, 2025 at 11:00:29AM +0200, Neil Armstrong wrote:
> Add support for the transparent Realtek RTD2171 DP-to-HDMI bridge.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
