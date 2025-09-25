Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96AAECAC5B0
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 21:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TV168M0cddXJc4ADRLp4palP3iJti5SpGvFpWvhOlw4=; b=UFh6JbGrq0zSbO
	+eL9IH/SOiZ1CeQTuyxUJck7KIktKzjGiR5WKvsqEDWngPapQmSKG/1mzrEE35sAk4NhwMF3BUasm
	GJrTosHD5/NH+Xq2GdAKrCbDeT+TusLq36nIF+r9S1PlzJprMH2bwlJcG2FLo6yWvoV2mJN7V1wHq
	PXQEWgrjE7ZW/4E8MjzyIhZBZdGOSg5kzqRfMko01snXS+p7aejEl+KBPC9WilPXjmWWHELQHxZ0n
	huFjHyvaNUuQC4uqpnR8KXmcmjfV5GDpLG02J18acZAo1QtNik43PeIwV/PNOAh6PyYM8Gld0bV63
	f1QiK6pR6RCSQHuh4ZSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1tvO-0000000DLje-1dfA;
	Thu, 25 Sep 2025 21:54:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1tvL-0000000DLiA-3WKn
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 21:54:48 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPgnX021563
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 21:54:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WK8fdvESA/OTliyL4dPj+6x8
	FLgnKUZvKWjsZ9ztQ+M=; b=CBGGbHfO5GieknXvJF57m5MG499qdch7gyJUxhyb
	g3jbSoSR02NbwiuFNxMLf5vGv/cD/MCt/137RrgBTFeOzk7h7up3903PMNdBT8CD
	SsgSMsRHjCADg2+8xHMXpzHACtm/vVWrgnzKPkXTHjk3wrrkochuAkr1TclpQhoI
	/xhZWJrkdG2oQqHjnIlXzQ4nr33rf12853oHOOKnqeZbXbbtWC/1rdVzFMBika/K
	msY/i/pQEEafSDhvpN2D2ZjquiboQqH63dqGJ5heFR+P8NAkX3uQBWHiJrrWzJCz
	Sy+l575LGFGEh2laL7WHJYS8qwFSo5eXchAhuGnkazU4oA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0qrgk3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 21:54:47 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d77ae03937so40468381cf.3
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 14:54:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758837286; x=1759442086;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WK8fdvESA/OTliyL4dPj+6x8FLgnKUZvKWjsZ9ztQ+M=;
        b=A2CGaI4mS5zePnAmPsiDH3piuN8fGWU6wvyce7RUIZdwsFziSJNXUooRf2+LcQCzCQ
         dNSq8U9tbpUathmTEjlAoq6wKub/WTlcQ9iDL0TGqVN63P4pAY3wc4Gf/gqP/KoJqLs/
         /mLVoKkbK+y634wIYhO8wgco18g6tzvaj5X8vF/ufTRssYdNXWxjfw1qs28jTqkYmN8r
         THvcNUbVN/HnruunLsVlMGhdo7ER9uQnUK2+wDWRGnP9hgf2XUkGi/ZRJlEJ9URjoekK
         jhUDXsD2Ukb8FqyL5m7XRk0AnSVHM58pLrtraXqflIPG9+AcNBDjq+wOA1DqhS+Ilkr2
         jSzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVu89QCsyrm5yNYZGmQXLrZFJBtgEvc46/4LjVfFqzfX7KytW81EAiAeeTv8UAuYZV4i8fOMFBujgw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFFGFC30yjgGt0I2a2tp4dHmMm0hvHiM6kE8aQEZZBQF13feZc
	2loxNCLSZyPCLYWsQg8XvRz8FiDA30t0QsKJE5rFB5MhNdBdg2A7uC/FOqpKye6C1K5X9bnjREp
	gwtyqfCTAbu3u0kRz+yd/0kewxQaQZLj9qkWle5LqUk2t8EKkT8kKLm5phKmfS089vkz9
X-Gm-Gg: ASbGncskiTI1bwqwXZ+wQaXPBbijOx5gWnKQqijqtHPM5wRShaIJdVY/xPI36d4QECN
	Zx5YGtyUijYo4oUL1baK9EkKCd2IWR9CXGxVPD/w/7QDe9jpnYgfHkrh0xDAXh2AS6ewZnLSblw
	6PlU0abWli4Cr+XfvEY60ZjUHmXaCI1TQx7pLpgNcKeQjVyBuRqjVOaUrW69k8GLvBT6NIH2Ef/
	D5UlyGYs1NAGMcp/b+QC+3lzNw1cXPAuaQq48rVwFlBtiMuK7KGDBh1XsOSbejmRKmkM8+Nkr6p
	d+cEYu0ixdLmjr3+ApM5vI8pb5iW5Zhp2UNkuQTWrPHXIKPCsu1V0qnnJ/5GC50g2R3/Mm/zE2r
	kh7rjmvE/1TsrOReDoWtHhz+YW0FuNzpwuvDEj/SU1a3dRjVxnG12
X-Received: by 2002:ac8:5d02:0:b0:4c9:a975:de57 with SMTP id d75a77b69052e-4da4b8095fdmr62825991cf.40.1758837286013;
        Thu, 25 Sep 2025 14:54:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIHqvgghJCvaOUOze81nukdnXAC7zdagDIbBSgvwres3Q7gPK8kP6rfKMTox4SKyvbSZXPWQ==
X-Received: by 2002:ac8:5d02:0:b0:4c9:a975:de57 with SMTP id d75a77b69052e-4da4b8095fdmr62825681cf.40.1758837285529;
        Thu, 25 Sep 2025 14:54:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139f99c1sm1117472e87.35.2025.09.25.14.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 14:54:43 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:54:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
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
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v6 06/14] phy: qcom: qmp-usbc: add DP link and vco_div
 clocks for DP PHY
Message-ID: <soor7srlw3hoqh2onmn4ki6d6mp6psmrbz4simwvvemcy4s5hr@pzabx7comvc2>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
 <20250925-add-displayport-support-for-qcs615-platform-v6-6-419fe5963819@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-6-419fe5963819@oss.qualcomm.com>
X-Proofpoint-GUID: qYOTsNgegO4bG_suGwmEA2dYjinFkQDe
X-Proofpoint-ORIG-GUID: qYOTsNgegO4bG_suGwmEA2dYjinFkQDe
X-Authority-Analysis: v=2.4 cv=api/yCZV c=1 sm=1 tr=0 ts=68d5ba27 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Ig_1WL0MwRJ8oiofZPAA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX9PI/QFl+RedM
 U2mazTO1hZOH1TUY7lhq5FYTCPMxpTCnummtLdTEVOpn97JdPdxq5GanLXUfnNlXJDkRSb/aqhG
 VQy7ITKVc+RpzanVzsTMBHknlplAYgPWFHuwusqcGI8X9v36uaFudtCHxvyb3sqoZ9eexlFgVpI
 c4gfuaDcqnnU+q40rUYntEBI44BajZrEGkTUqsePDDQ6hDeTSP5WqcvBGSosw71TsC/myDWH3nB
 Y/xUVfRTPtHeN3QJQ8TBzIPe1ITak43boHf1igZjdSFSS+MUwUZi+COE6CxBHOACCCzjcrtQnpZ
 78RXu67LM5uX0e39rsx2R+mbQWwk3/PiLo6gToy+klsmmz0BLN4o6diJLjHo13YOuqfVkyc7LJr
 T4XlPqHwuEpP6JsqguoNYjz1U1aj1w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 adultscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_145447_878680_A10F7537 
X-CRM114-Status: GOOD (  14.18  )
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

On Thu, Sep 25, 2025 at 03:04:52PM +0800, Xiangxu Yin wrote:
> USB3DP PHY requires link and vco_div clocks when operating in DP mode.
> Extend qmp_usbc_register_clocks and the clock provider logic to register
> these clocks along with the existing pipe clock, to support both USB and
> DP configurations.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 210 ++++++++++++++++++++++++++++++-
>  1 file changed, 204 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
