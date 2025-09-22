Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 009F9CAC592
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 23:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGuzS0yC4qlBGw+mZRVG4NgkJb1+LvnEOISFxtv/hFw=; b=Iz8F/KLB3zcSdl
	uyJ3m5S2VuZYfooeY8t/8zoulMNoeBb/J/5cqfllOwgxJQ27eLxLtRYF315pFW9FXcE8j7Dbda3qm
	z2BFtwYye7Njcx6VOFVPbmruAs+pOg9+MqHfWcADykPkvKpfTjAi+FEN4BitWfHP9q2uN5D+IZtvk
	XPPPkmTKbwnJz/XG+1nmrV983uEXAAU7P64qvvhTGCJfhJqxE+s7gsyMnmlUNq0J+2q6026KBc3uG
	LwVYY86M+d4VhZynlIC9f5LZwGaOLdWkxRubi2MItD46KSZxfku7QX+z1iT6b+1lteSJko1u7kHGD
	4ZCyFo+gJGGqI7iBvJ+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0qAf-0000000BpGr-396U;
	Mon, 22 Sep 2025 23:42:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0qAd-0000000BpFo-13Xd
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 23:42:12 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MH6roK029591
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 23:42:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wKrPMr0tlkE4G5cOmGjs48vk
	F6z+umGdX9J0UdLXMTk=; b=IaG2ts2/uJmj19op1DGaZGmEckol3fdc4E/ER5pR
	vBstcL5JTs4W4h0uMkjkSvRQPyVO8QbQisnPCxaJrL9y0uINT6aP7mHU7DzDDmB/
	Cdq2F5yOIiFgwxpQpWmid0qmHHtnMhTOW329znjbj7ChL2ot93+bRfk+1eYceDIL
	IkGZrEs3q84fuQB+rSaFLBg2q+4z0ZGqyCMVRJ95yHnrwotb9VU8iv+xmR/vM6+V
	+7QstFJG+L3kNz6j/M0pn4O62H32CPFQH02ITOsApKHBzdbOKewJgw73Sb+6Iu9Q
	2FEImUNeLnkjPyk5gVgMZsQ/097EUFpZVDfoIvgwhRpMRA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajery8c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 23:42:10 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-817ecd47971so1163192285a.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 16:42:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758584529; x=1759189329;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wKrPMr0tlkE4G5cOmGjs48vkF6z+umGdX9J0UdLXMTk=;
        b=mPThY4+hax61So+pfWWwHdUNPhxrnIgoYMgII0bQ3ENvIW4kJ3nGcToJQK/15x1Z6o
         yqUGhZAECkQ6xpIAqgxW6qIkI1mOFQ2RLu+mkHTEBmih/YdZ/ugvHIEdBLgUxuL7E99T
         P895d16NTsnHF+CTVudSmbus6KhMj5M9vTD32Ko+DAK+790Ez3sfKvT7e0jAZI2Nq3Bh
         IpX0VwZQ/zmtc9aL3n+P1NCqxIYvgVHZMhkUL8+N7SrfW1LPbPxngDV3BaJ9GpEjBHi9
         zV4d2wxEAhkTdg0QIWJncKpuxanHu+8o3jKaqRUg//ERvxgeqpq8xsScVSWECPPuqI1g
         1wlQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnLrAW2NAm4YvDp8bz4WW8fs/D7H/K5elGB5zMuSGOJnV4CctkKBNZ1jFy7vGunNDoHQ5SaB7wwq0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzy8ejfkA4KPKyen5P+3d7AYTNpmHPJVVSPBQ0VuAddRg0jiHwh
	vzU5YAJYSFnAbSb28lnsIU/IzvRstylg6wWekLSpzvDLgzFPoyLmH+mMnyO5ssnA8KnD1p/x7k3
	U+da5ULT6L2PUv1I+uv0HFmFFyGCpZdnVGjuWJTacgcNHzobbLBGbJyLU3c1aQz3EsyY7
X-Gm-Gg: ASbGncvmEHJ6I0JQfpXG8gvmav3E92Kb2AcT3zh2032nXjCv04UfWvFi55BsEYI3g+T
	+dfxOdSXxy93jGfxY4P9U1uXlCPuXaoJmI++OoJ4gGgF2UybLe71AYPbqmD/GkXd12e4VBMYDa6
	Jmuy0DBW+1YIqI8tYeLFvJjQYwnbdB2TfW4lXjnaooC/jPYllpGcXXEx06nu4MO0Y4j4VV6qgo8
	SP0l6MJghbjxyxP0Wc2Me/0tuYciPglHmFp/g3jPbeXmaLW7jkNWgi4yiAtWpzy+btEOR2ZeVlp
	8MBhPhH/R5xKd8hmy47zbm9csyHTn+afkDmlH/5nCT950+HxyyprIxDNF+HR8GOdQPh3hkU/9v0
	lwSlIU+h5bZhK2GfIAduDAm4hnENbtI7ejxhBVuMPXZKsj7+NYZVM
X-Received: by 2002:a05:6214:258c:b0:78e:5985:92f1 with SMTP id 6a1803df08f44-7e7a3c99478mr7170316d6.11.1758584529322;
        Mon, 22 Sep 2025 16:42:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBTLWQ1yvXxw7dPCeN1omOgmdIcvJix3NNKAQEDZUCozU8Xb/ljY+ZqfX5B8NkKKsPbkx9aw==
X-Received: by 2002:a05:6214:258c:b0:78e:5985:92f1 with SMTP id 6a1803df08f44-7e7a3c99478mr7170146d6.11.1758584528898;
        Mon, 22 Sep 2025 16:42:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f45387sm3686349e87.1.2025.09.22.16.42.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 16:42:08 -0700 (PDT)
Date: Tue, 23 Sep 2025 02:42:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Konrad Dybcio <quic_kdybcio@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-combo: Use regulator_bulk_data with
 init_load_uA for regulator setup
Message-ID: <zqj6ojdg5qizvhdec7ubedb7i4ftoth2o7p5ydbu6euszxbzh5@atc4z46iewxo>
References: <20250922135901.2067-1-faisal.hassan@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250922135901.2067-1-faisal.hassan@oss.qualcomm.com>
X-Proofpoint-GUID: uH__Gs5-LXRYlGFGzNkbcm_h5XBGeyuz
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d1ded2 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=tZu8JuLyvjuD0Hmwe5kA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX8tEq9VDXlLo3
 i3iB0WdeRUvugAR77ntybbDFnMsW8Db1ZRrvw6gyMA3Agnloi7FE2ikFw2WLTlmmyYy4X4InVIz
 mYFtQWyjWNTZcTzFxgmpK5ft2gy4A2OAyQKS0uWHIP2TOzB5nzW3o0RbUUnLsa2FcPEZCcwEOqN
 +mZPUK5S61iWsweYITzyNXwfZutKcAjeJzi/Txxer7+FkvyeQzAuilgiyZM7YsvRAU7Gikd7yI+
 LCU2zo/JM9Jng8bDLnKStDTz938LGG0RIHwPakAHlbtPoXcOs9GHLiFqTLFXA/Z9zVEVZKjLpxe
 QwcQmcImSom5yvV8QAo0R7Io5OUV7aDxC4Pek+i/oW3Vv2bZClz9Ekya78HEKvupmlTJc4mOpxl
 xtsXq51n
X-Proofpoint-ORIG-GUID: uH__Gs5-LXRYlGFGzNkbcm_h5XBGeyuz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_164211_300460_C955E134 
X-CRM114-Status: GOOD (  14.57  )
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

On Mon, Sep 22, 2025 at 07:29:01PM +0530, Faisal Hassan wrote:
> Replace the custom qmp_regulator_data structure with the standard
> regulator_bulk_data and use the init_load_uA field to set regulator
> load during initialization.
> 
> This change simplifies the regulator setup by removing manual
> allocation and load configuration logic, and leverages
> devm_regulator_bulk_get_const() to automatically apply load settings
> before enabling regulators.
> 
> Signed-off-by: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 49 +++--------------------
>  1 file changed, 6 insertions(+), 43 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
