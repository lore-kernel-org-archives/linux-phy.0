Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7383CCD183
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 12:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=91MSNlhtl+4B/cyI13DsKttSFnzDFzQVDPJw824WIWc=; b=W7glCFZ65NaA7a
	gDxIFAcxhsEZSdoq0vzwlRmlsAlijdHdv3l7QDJZBZxiWjwJul1lcoUTy/AxVNOnPO/xAJB+v6QSz
	9JnkaeD+tMwN4jcW7/hdqEdmJchPcZVLkcV4SfRqoLNOmufFJ2LgY24sHFpfQEuKyZ/bP6uCIOSrB
	MieffAZWsoUS2qVlvkQCkjWlsJBLSrSwxz/ruJZF3J+zT+Vi0F1Rw9daalGBohAZ66kJENvOzUZS3
	ZYEj9a1PnJw+Vk5oV2Am4qWef0JQRx90hchhtFqlXcXRdm9UvaExISQad8FfcTC/pFYWXO6kvrso2
	QZntxudwR89ivIFSYQBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Hqy-0000000D980-2ffo;
	Mon, 13 Oct 2025 12:40:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Hqv-0000000D97d-2HJ3
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 12:40:38 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DAnWSI018067
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 12:40:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=f6scyOM+ahva9+uwhw48pxSb
	yDQ+LPEwq5/UOfcG8bo=; b=ibG1wdZh8jBFjAAr/HF2MKezLDCDoQs9U+AgU1E+
	gsv1WjshXlYEN9CVA1E5jrdrhhJ6K7/zPyVZqvMENNAU/tCyIKuRxCus6Jc5tetA
	a6rPPK+TO2BnfR38pazxRS7lrCik4W5lChA57gij0xGAxeev/Yl1GjWFyr9HS0nR
	l2fHx/xpO+WjXOHdNhSY1nFy8+H6qGYESv19zRsJl63y/BExMozlu7ORp7RC9c4l
	siWH/7eZgiUEdQnb/G4twJJ4YbPKpXQ0MOFG0iJRvYn+xVIVfDBB/ZAX74srez0Z
	OSrcURx02nSd3it8vowRjjgF1swAg2wZTvtQ1POWLIVZdw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfdk4j4u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 12:40:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8645d39787bso3011066085a.2
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 05:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760359235; x=1760964035;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f6scyOM+ahva9+uwhw48pxSbyDQ+LPEwq5/UOfcG8bo=;
        b=qDx7i0vCyxsoYhHwg3899l+HaMBh6TOqUEpcSaawfn7rKjybWUt8vwhoqKhtSCSgYI
         ZeiTgGiB+MMzf6xVbtkIQSgqg5r5VqakMIquVwURuGO9AoEHwxAuvMvMtFdvTjwxBp0P
         b9Dk5gEeVrRJup60jYp2IKq9TqLuG2zATGUiAZ9A/da/rGQfekbG42oR1lw1psI58WcE
         v6ctyWtI5jO7zNCe0/VDhdSJBKQkuwYJZa9HdS2RZ34Ue/rG78nZXd3hzrCgnrdeJ9GF
         zYbBnOM9pCEjk4+zKQq64oODrFdkwW0gSBU4i89hGeRjyAADNXCeFo4AZ2Zdazcy/zqq
         U8yw==
X-Forwarded-Encrypted: i=1; AJvYcCV8pRxYsJYsstvyaAknoa5PrH/X8MzvszZjxGGjnosDHz04wqfNQAh+72E46OKsI4wBw0p9B3yIjLc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyX7f0fkpQ/7Mg7EW2GtaVyVR0tvBhQUjAHZ5pQmWn4bACbnoVK
	3bU5yGmq9z4AqbKkfVfGm2XkLQ0EkPwUspi/UkpsWDcKuWzpLzKgZALa8mTbN5m+Dmdk7me+rou
	VYZOnuO9iURFG3hgE3zbGk6H/WDReKoGi+T1J4RnhGPYMuSdCH+saiJe8U3PoI5iJ9k7W
X-Gm-Gg: ASbGncvgU5bkND+eEaF7wVvjpWqy0mjOCfdZJ9Jn/QYTYHyHOaiH8gJXMgtw9YGklOG
	68rFH5gWhvyjq8QDgk7XVEiSkzRbGKK44ydbgD9Prt+SB/uBqRdTF2PuRwyi3AocmIqyWsQyLDr
	fkuNZxdF6IGKC0LfnH5lIa+UZwymNrqrpIwS/rJSzk34+tibMpyU9hVVJziHuJlUW4qYU4YjHIb
	5sRM6Qg9Tb7D6amSC+PGqjFB6gd9x9Ia4Tz6atFdgJqVziyQ+F/APoyrEBSzaJHjY8kJh1mdyy/
	/Kpm84suvkZCK2sLxGJYTxZjhIyUzK7Vw7WW2IDVNAHg60AkHVjBcSHL5xQJDXbhuKA7XUeeL2u
	BJSQE7cvqA7Ka9v0+zpffPubUrVzCCGLPbuQHiz+xsKH2VzaPEB1b
X-Received: by 2002:a05:620a:458c:b0:868:54ba:7c42 with SMTP id af79cd13be357-88352f83d61mr2871642985a.25.1760359235487;
        Mon, 13 Oct 2025 05:40:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkvZQ+8ZJnIwC2hIgs/DILNFhHouXWRCw0k5tWWtya0oIkN3txK/mV8/TSZwSq7k0H8FX0lg==
X-Received: by 2002:a05:620a:458c:b0:868:54ba:7c42 with SMTP id af79cd13be357-88352f83d61mr2871637585a.25.1760359234973;
        Mon, 13 Oct 2025 05:40:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5908857792dsm4081471e87.105.2025.10.13.05.40.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:40:34 -0700 (PDT)
Date: Mon, 13 Oct 2025 15:40:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 3/6] phy: qcom-qmp: qserdes-txrx: Add QMP PCIe PHY
 v8-specific register offsets
Message-ID: <x2443gg3bj37j7qxjk3ocol4xzcly2vandob5j46bp5c6akqb3@zgwrl7qhl2y6>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
 <20250924-knp-pcie-v1-3-5fb59e398b83@oss.qualcomm.com>
 <fw5hf4p2mjybvfo756dhdm6wwlgnkzks4uwgo7k3dy7hyjhzyr@bv4p7msxapcb>
 <aOzSnxuuAb4gFCkk@hu-qianyu-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aOzSnxuuAb4gFCkk@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-ORIG-GUID: 59A7YW1U4EolfjlILhbxq-oms07P3-5c
X-Authority-Analysis: v=2.4 cv=MrNfKmae c=1 sm=1 tr=0 ts=68ecf344 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=SRHymB3k53h_HzVQ3XsA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: 59A7YW1U4EolfjlILhbxq-oms07P3-5c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXxX6GoP1AfQrE
 I7hCoVPDyBwBsjVx1e275cgE1MzRrFR3EtLFGbx9PIUN5tlmAzGC6lfBtfjdaLWOeehvOW3aQ0i
 u01vEDajMzrd6UAgzLjIXWrZHw0wvbcsKtaTeJH6nDa+6rdIdBBcLG3qHxCTbtXKmVi+kQA/f5m
 MPgxFMhdmqTHyfGvIlLWgMWspAdYew7T6mpJUycTnpAsutOVycg0GCfP//JaKK/u4SQm9BaolPd
 jb6ryEAF8m6EDSTUhjWFyjNzKcABnIUvIKQaSuAEOQ/3op+9wNHCli8bAiYYenzYy9tygM6XHrx
 Hh1OjQxLKN2tV6TqlY1UgZmwsl4aaYgTqnPq+q6iElQvF1zsJRpkqhGLEtnmWl6omtdN93kOwAq
 oOgsvA2DweG3/POUfIuis3Uw15/ceQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_054037_733768_8918754B 
X-CRM114-Status: GOOD (  20.46  )
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

On Mon, Oct 13, 2025 at 03:21:19AM -0700, Qiang Yu wrote:
> On Thu, Sep 25, 2025 at 05:28:15AM +0300, Dmitry Baryshkov wrote:
> > On Wed, Sep 24, 2025 at 04:33:19PM -0700, Jingyi Wang wrote:
> > > From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > 
> > > Kaanapali SoC uses QMP PHY with version v8 for PCIe Gen3 x2, but its
> > > qserdes-txrx register offsets differ from the existing v8 offsets. To
> > > accommodate these differences, add the qserdes-txrx specific offsets in
> > > a dedicated header file.
> > 
> > With this approach it's not obvious, which register names are shared
> > with the existing header and which fields are unique. Please provide a
> > full set of defines in this header.
> 
> Sorry, I didn't get you. Do you mean we need to add defines for all PCIe
> qserdes-txrx registers? I don't understand how this makes which register
> names are shared and which fields are unique more obvious.

From your commit message it feels like
phy-qcom-qmp-qserdes-txrx-pcie-v8.h is an extension over some other
"base" header file (likely phy-qcom-qmp-qserdes-txrx-v8.h. It makes it
harder to follow the logic and harder to compare the values. Please
define all used register names inside the new header.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
