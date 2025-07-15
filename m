Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4375FC83F22
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 19:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3slmNQG+yhH8X3ZDAxXQsoR2BJMts7HeaQ9oDoBI80=; b=fqwlmhiTmabWTp
	73+D+UKEYScZSm46agBl+hE31tnhLAMRRYwZTLPufbR2YdsijpH1ioRZnU8rn1mf0jMKeVREiiXPA
	dfxQkmReEGkF4drryzauUAHsDuEaeT3rUaIJWRjIjtoPLhzgaeXpPFYiMvAae5AcicqX5lU/M2YXd
	Pvv2fXCxQ0iiaCPAgzJTowII9C6ki50JbA8G9nxQZrVvRoFbEAdcGjuUA+zdKHgEZONirrZkMmlfv
	HQx3vEgJ8CGac7B92g4DicISn4c164IY8eC1+nIX4V7E/Pt9HFFu1AHOsZ9pWvnWndWMSzy/dvCee
	MeEWK4XGZ4R+e80IzXhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ublBn-00000006206-2vzS;
	Tue, 15 Jul 2025 19:19:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubjYs-00000005pve-1AFB
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 17:35:27 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FGDEDk024488
	for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 17:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YwHMduJFVZ0XMQsQOdCu9rTr
	BXiDOqf57dZo0ADVf/k=; b=HtSSWESmR1v8aUvbmxFz2n7lv4gFQQKPmoVqHA/B
	INn32DeLsRf5fkKXgD8Ae2eet3yealk6LUaWq0zXbhU68ttL3LRbOUs2zi9WrE9/
	BE6OcAqfBGfnVef7n4cOSUHHj8x2RwS9kz5mM6ktfYrTIHh/QVm1Mz/N5DqHsmRS
	sW5YkTnZxb8Yb1s5jWyY3BVwMJyOGf6hol4Iip/9FYjYcHI0ha8mdGWinyNdxX8T
	Z9TgsfLgWSmJepkif1i/zHKYX4mJBXsmwO3vXAdTXdS/2RMAfgCUwIULweluiAQC
	INvCL10uUOkWDMrPXwAe72ATx4/BA56yOJVCCORFzx3V7A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dpc12c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 17:35:16 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e269587d8eso433239385a.3
        for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 10:35:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752600903; x=1753205703;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YwHMduJFVZ0XMQsQOdCu9rTrBXiDOqf57dZo0ADVf/k=;
        b=fxiKGmbqasYzpvFTzIk13Mj3W/qPi/eUdYwhknG4MaXv9D7dyGtsedjqCogxvd9Mea
         mVgeBF8A2cIKqlvplxO2Scy3X60IM+kaGzHGliLaovODTP2Gmlz5BnonjvPIGl7mnYH1
         bWeBlTMRU7Bt07jRE6xg8d5/fBDJmEsZoTNpKzD24vLzSfTj0j0urRXvwLJQay7uqbWZ
         vQenb4XQh4UPTZHL/x70nIL1cI/73va7rLxKSL7TagED+oUz2EG+zHkVgf6U6nn8hHSc
         4YeEfO0iealXhIasq7n/6weQAP457mckCXIHgtAr3U+2qtmS+78gYfTztfj81wboPUX2
         duFw==
X-Forwarded-Encrypted: i=1; AJvYcCUJ8eKquOn+pnCRvhx1s1DS8gNdJ/OqqQwnChJH3Hh6rbshsktgXLtCD4rYI44Mup8y5Onxus0n3nQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3jrQJFC78GC0A4fyHAzQguTPowebWus2E+eqspMvEExgPvDI+
	VyfEwCJMMT2IJQ3lk0yx5UEPz1fTAfU7Qm9KT0hBnoqIufCWUBVMx2BbEsdC0esjItChWJPEO7K
	OlUOg6Tn+gEVuylZUENomkHqfXbavnCIiwP3goM9PYz/0NWhXbC/bFG1/ZauJzLn+fQiC
X-Gm-Gg: ASbGncvlM6J/GEaTlTFeyguwx+zqFjSb+T4I8V7mqU/CC0hJnpB3l5LWb2lMN5xRgAd
	edLw0rUr0WYhWXM5yT8VpyjXuF5MXL5h2K25x+fRQkiDbMr+LDhdN8mwrJQJhr9hja8V/REEn3j
	VdZGqw7rQKkHlbPkprONZ5hrV6T4qAfioqRc68sfJ0p/hvIJyjvM5HcNV9zQa1CTfrxFV+tyP/D
	YULHeHu0MKO3wJ9GTj2+i7r9LK6ZqJh8dbyhT5jZByHfPJNZNZq69O2qiYr2Xgytm7mywS7wl+v
	jGRVc0k2kWsHM7aQpr9413HDhEIPJ2bOHSiWMKNhtwtXH/dlchdx19edRCqAMUYYYTE7eimX12i
	r4rM3gb+QWyrvk7sPAIoxQDIOM2uiG3BfRpGSARaiuhrNr0I7QN5c
X-Received: by 2002:a05:620a:4513:b0:7e3:33af:c45a with SMTP id af79cd13be357-7e333afc5a9mr1078301085a.49.1752600902899;
        Tue, 15 Jul 2025 10:35:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgkC/RAmmlrlOop2nd4cM+Qb/s+gLrKuUEGXd0Hyq1/Zw3CSYcbKVNpSB1ZGZ2gTFs/qFsWQ==
X-Received: by 2002:a05:620a:4513:b0:7e3:33af:c45a with SMTP id af79cd13be357-7e333afc5a9mr1078294185a.49.1752600902369;
        Tue, 15 Jul 2025 10:35:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fab8ed429sm19601101fa.85.2025.07.15.10.35.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 10:35:00 -0700 (PDT)
Date: Tue, 15 Jul 2025 20:34:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 4/4] phy: qcom: phy-qcom-snps-eusb2: Update init
 sequence per HPG 1.0.2
Message-ID: <n3khphjtqwcfhzxbdici255in2cbceujp3jlrtkrqsd77jtftm@ggpa6eek2xna>
References: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
 <20250715-sm7635-eusb-phy-v3-4-6c3224085eb6@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250715-sm7635-eusb-phy-v3-4-6c3224085eb6@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDE2MSBTYWx0ZWRfX1HMvoY1KaLjV
 BYZDHSRInwkOwqR/F36BGhdbc1cn55QAPwDqSp5WmDC9ezsllPhXTbnemM+eIjXfNLZRPjrpaex
 wX/MRcqeQ+wdD1wK0wu9I3SKRcidPn1xV8H3Ym4T+PN4FZH6eXr3fnw4mCpeXndguIb1OqPoI+h
 CHkYlRjwkTJijHAaX/PE6GQDnAWFTxVXrDE8i1j9h04CcAuKx/YyeoOlMRhytnpvElyA+puS9C7
 ECy9E4NVyViFBleBbBWW2MeMa4CLCZRPTD3grjp+COyBaBi4REiLgnK8UBWsKFXYEBgxIgVhe6w
 6Xxy2KJmUHmQnudWchcIbT41zHt/GTyQffddyLK0Cu0jpgqXK6iSVJ1UjDR7fOvvZYwIVk6t+o9
 ///MvWvJ1CCMfxV7pNhZNZoyb7Qk2VW71ScCK23sP+oC5Iu0isx8ewdmQMBTSen8BBpAFJ1n
X-Proofpoint-GUID: 78og2gVbXLkA5aXa6W416amsZRv3z_7t
X-Proofpoint-ORIG-GUID: 78og2gVbXLkA5aXa6W416amsZRv3z_7t
X-Authority-Analysis: v=2.4 cv=Y+r4sgeN c=1 sm=1 tr=0 ts=68769154 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8
 a=xixfk-lNQEsWtM5knIAA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_04,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=950 phishscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 impostorscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_103526_319188_D4F5ADE5 
X-CRM114-Status: GOOD (  16.14  )
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

On Tue, Jul 15, 2025 at 09:29:37AM +0200, Luca Weiss wrote:
> The eUSB2 HPG version 1.0.2 asks to clear bits [7:1] on all targets.
> Implement that change in the driver to follow.
> 
> See also https://lore.kernel.org/linux-arm-msm/7d073433-f254-4d75-a68b-d184f900294a@oss.qualcomm.com/
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/phy/phy-snps-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
