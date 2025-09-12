Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB7EBCAC587
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 01:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5zo/n8ZOQe42h9GUacBfdNIhTRVs849oUDwPqfLkos=; b=hD1khzTOwusTdP
	sF6mpOOviGxo6NIYA3wkFfzCVheDNg4zC1Rzy1alrH4isOLuog24Wd4vCmiqzSMcN7xPYyZdHPBqy
	/TkJ0gQ0v60FA1u54Iy6Fkh7c6tCQcUwW5tRw5yVO4t+oltnvq2DKkOjVsW077uicwm8JxHUnnzZG
	C3OFlfRvNmeW+6yLhEJ5ry0Rfayqd4wp6+Z36CmtRA6lMIblCve3lP/XQ+nYlEIB53vjKyUA7QRg2
	KMNX/7i4cerdBJ4DhNotrHoVpKQmwK7c6k3cjEYY84OFgFIbveXLNucDYvcb5TKzCJuf6PduNWv9Y
	eOY6VrRZpOHkRjluLkfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwsXD-00000006IF2-1rnn;
	Fri, 12 Sep 2025 01:25:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwsXA-00000006IE2-1MFi
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 01:25:05 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BJZY8S026347
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 01:25:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jVL5pFMdzfmtJDJqaALS6MKa
	H/CYA6RWxHVUSd0whRA=; b=Y9Iwwt9J07xqyPZyLzirtvGTfSjHJt09X6aPx4IM
	5POqfmcnjfJVtTO5/hpE5TrcUBPl3rE+xTqDE2rlFVAB/al+OJCeK686UlLyg7xX
	yORbypKnJPaJtWCfJGZKXCouDKsWEMSsOSYPSzyMx9sFPzK44E4DkUp/qgDxvmuR
	pssa7RBjWk1wm7liEMXUMJBoNYJ0HIembptxXEw4L1v0tsamZ3JevPVKWWMAPRtv
	gbnlBfOkH4PEsGK4Spu4aE0xLVq9eYLq5m/J5vjYUGhtFHcw8ZfwBDPniyAaOSCS
	R0eQ8dHfGryL+QgnO9tgEzdSPgc0E/nD7UO3PStRdnuQlA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490cj11s41-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 01:25:03 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b3aac677e1so15564111cf.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 18:25:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757640302; x=1758245102;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jVL5pFMdzfmtJDJqaALS6MKaH/CYA6RWxHVUSd0whRA=;
        b=TqXy9kjnyswi++NYf6zbCiBXkFs7I6xLgU0tP1hr6RX5rkFipiIZ8AauzAHGdXfcdA
         o9rMDlhKy+TMuU1e0vRIuAy2WGjgMZ0oNfqq4XVi0HB0+bDktiFiaCf+pVwAITB9jkNl
         iVr2ZEWUVNLHWjsTS64rbueubxUgWgrKCIoLBupeO3QDwgFh1kOR5Fjhvt116scMmoIc
         SD5UQBBKOop38qjeHRRLwtUWiAv6M63F2NTNtD5x2RcZmso8zc9W263s4bM/CK3rWR4y
         0AX8cmnbbOcIvGfFriS6UPGhgNeIizPJji2qnKjW91vYEVWSJResRmCrb8S3FbwOOcyb
         p4kA==
X-Forwarded-Encrypted: i=1; AJvYcCVaAM4HPS7/FldWLqB5q7bOpA4UMYGEmrwru/Jtq3roosn7Pol/o2jMHpnkAt03B7bSU2I7TfHFgOw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwhRDP5/ReeCq64TePKXDwAcUEtTBGvqkDw0wfAgGhSmOBfeanX
	yX3FOSygiquaLcX/ao3zAMTutV3Nh/0rYT+q4M4w3vu/wlc5AFht/cbesx5o4gREMMBJpa01vYt
	aqaXa7F9pjtX6x3EwfS3G4BuTCXV6fctmici3XlUITA66v6AmTLz8sh1qWhBNJHxJz5I1
X-Gm-Gg: ASbGncuJss+IgyGgR2uP9gdN/VcczMudJq1Fhtl9WwWJkSlqaTTuuJcFUZQnN5oZucD
	cX9LdxQ9CTMdZRoizihlUwAbeGUGta2IEy2LwlBkWuxPfGAKfMP4RuNbYC/9YLG2nXCk6VT59Fz
	wfVEDoMrsiofKeH/x8CMGio3c1HwYBMY2VPsm3/shlRcV+E0ixDNxSU1qJtOVypi4zMjbe2K7ql
	Shea+wG19TsfZngfmoZ0brCQJQ9mu2WClpK3f7Zec+W4e0dEzCF8Rms3VojZd7bUI+Kg+jvqY9d
	7M1x7dvUQnwN/j58MtysCnBufRSbjztfbQPfWWskn1dVJLBxCAY3ipRZKC3WUlpcEgD8PulH7AL
	HH6l1ADXHtPa5jY47hNbiXTcOra0ga/sPxMo7y43Ptqa2twR+Cqy8
X-Received: by 2002:a05:622a:514a:b0:4b4:c44f:1a7b with SMTP id d75a77b69052e-4b77d0bd2f7mr18790061cf.62.1757640302355;
        Thu, 11 Sep 2025 18:25:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+QdUbchdxCgWR0jpxz6S1/KovEnrGHT20/GZYw265IPlYpgXYKdIaCAtbH/9CHq+GGr04EQ==
X-Received: by 2002:a05:622a:514a:b0:4b4:c44f:1a7b with SMTP id d75a77b69052e-4b77d0bd2f7mr18789701cf.62.1757640301746;
        Thu, 11 Sep 2025 18:25:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5c692daesm788199e87.26.2025.09.11.18.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 18:25:00 -0700 (PDT)
Date: Fri, 12 Sep 2025 04:24:57 +0300
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
Subject: Re: [PATCH v4 04/13] phy: qcom: qmp-usbc: Add QCS615 DP PHY
 configuration and init data
Message-ID: <3ihzpsmf3btzeltxggdnbheji6bdeornravua76adw5dhotztu@e3fca2prl45r>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-4-2702bdda14ed@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-4-2702bdda14ed@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Pv8pKrgxAjtpWBdNGe2RoGtyTBLGzy6F
X-Proofpoint-GUID: Pv8pKrgxAjtpWBdNGe2RoGtyTBLGzy6F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyNCBTYWx0ZWRfX6FIP/BQNA4p9
 I7cn8dczpzE0c54edRZB93s9/b9aRbbDe6dg6Zdb0jt3i+LpAipg41YEZnAMjG97aZ2Z1q3Y0ar
 UqsbcI2U9J5ug/c221ITXY9xnm51i6GC8Y4j/bPr4tKQyD5+z/BOHOAbNWFn/NjOZ1822VIaPwl
 xMnQFHMH37f0NuoZ5WjNzvTLpi0nN7hkFzbNWfyjoFfksr28hjt+TeFvEPNFvzfSBSQ4tW8T8eZ
 XezPmWbKJri4+vmAOF2eV8Ca1pXrXBcDfMgV5tp5o7EgPbEGYtLgSCG006TBELdQ+2uh2W66NS/
 hT1WWVLnimn1BnlGL6RqqdN1zZYYoAdGKwltj75D2yP0fZ7TtbEnGAcXYr+ekBuiRopLbM2huFk
 dIRbQ5xe
X-Authority-Analysis: v=2.4 cv=QeFmvtbv c=1 sm=1 tr=0 ts=68c3766f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=LEMoh8uNuNVMCwR6SuoA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_182504_489742_471D953D 
X-CRM114-Status: GOOD (  14.53  )
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

On Thu, Sep 11, 2025 at 10:55:01PM +0800, Xiangxu Yin wrote:
> Introduce QCS615 hardware-specific configuration for DP PHY mode,
> including register offsets, initialization tables, voltage swing
> and pre-emphasis settings.
> 
> Add qcs615-qmp-usb3-dp-phy compatible string to associate QCS615
> platform with its USB/DP switchable PHY configuration.

This should be the last patch in the series: once you add the compatible
string, it is expected that it works.

The patch LGTM.

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 141 +++++++++++++++++++++++++++++++
>  1 file changed, 141 insertions(+)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
