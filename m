Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 944C3D1CDBF
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 08:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=czGhA25dcvOIMppCH9suNEL6Ommru54v48R8Ci5iesw=; b=cfBILCJ6vznPu4
	PlDv2kFrG7nKIocVpZFnX8eQ/CLn3G64wQRxG32l746dga4l9DStPaE45UL0/Je8Hq7tNX84uB3+B
	DmmklWX0MMZ/SGpZpPJl7LVlIBq6MBZcYu1VdgZHQtRYJK7XYvX6ekk6guSi5sjJJWw9YKeHexBtc
	YpxiGjUGBS6nyDcPlCKDlg61reNVRBCwN4JBJ+TMbmjEqXkOt/bjM1dKuli3fG3zRvRdmjhoyUBki
	SDirmlXEN+don3o4GeAgXoCqLkekUHtpdNp0TeP+Lnz5RWg4vyEbP731T2EuJY/R8tQWWyPdn+uM/
	/b8dg/dIhha7lAOZZDYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR587-00000007j6P-3KC5;
	Thu, 04 Dec 2025 08:56:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR581-00000007j5v-0eSz
	for linux-phy@lists.infradead.org;
	Thu, 04 Dec 2025 08:56:00 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468WO4598283
	for <linux-phy@lists.infradead.org>; Thu, 4 Dec 2025 08:55:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lVyrTYU81hL3VTWZlMKWhfdj
	L7QRH6PnVBeS23BWFYk=; b=ajDm1ADDDQ2eEr7ubLAkxGXiM6AX7DNcTxkoO1L6
	tLS4jHW8b+2n7ytxqS5Bs7/JwII2UPUXwj4kLan4xeAyqkDUSwsWcoqqebG992Pb
	Ye9eKFrqFJMsTIQixUJeyGIPe298Y3y/pMXFsgBK4Kid9XWpYfdhx8YK1VINVGsR
	ntzIzJJrFIazuv7F8G4zA0p3vB01z1HEK/p9bJ19P/lLtZNh6lmaQqj+1irQTcXz
	6LLG2zTzkTUABq6xBzw5lYB3UO008cFPnHGOOa3iIcOVFnrDiAtz8tYUV+g+gRS3
	60QwA7NT6PbIyEDTvEfRs6B0uzrLEUaJ0bMjF8iteDb4Ww==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au1f010ga-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Dec 2025 08:55:54 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b30b6abb7bso139416585a.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Dec 2025 00:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764838554; x=1765443354; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lVyrTYU81hL3VTWZlMKWhfdjL7QRH6PnVBeS23BWFYk=;
        b=XiRfG+sCi1ig50QY4sNBQ89oMK93h1Jrpn8f4Vn3MIOk3NT8/wxoQluuImJKYRViKR
         fAtroO3gj8TKZhBOl0r50araHIvWURCILqP+8IwL4b3kt1YFcm5xS6BfZH2BK6EMfVZr
         s2Cl+IjSUTVdKTx3hzO7ed0KJqMp9h+drgkKdXRa3d6qUBEq2AAxVeFg1Uk4LvzLu2q0
         +XgYNnbIzicf4M5KtdMBMAogoEiuPb3utoxjNZDThkKGgmPPV7+9jbWaxxhdK86FjIyi
         VEvKYNCSEKx1QeeVtvROgaX4b6P7gHXl0G/2n08+nSjdcOoAo96EKJI4D1HCP0Yq6sQV
         Eu0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764838554; x=1765443354;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lVyrTYU81hL3VTWZlMKWhfdjL7QRH6PnVBeS23BWFYk=;
        b=h6t4Hn4Y0ATca0zzlmjv4HvvLrS53EI/dN7iQr9sATRU8lG6YX+lIiH+k+LxuwRcQ+
         klsdKJNf4RNaBSFD+l3gy9jJZcHry2v19zj4bRj5Rkrm69q0q5qwirjgXrEqoA8o3YyX
         0fvmP9u4A+3z+WxGnpNM6VKMik2tbCjxRt+1QLzoyUH3s6A3a/+DcT/IeHcVLAvKjfJ1
         DmrCDHDdl/7LLYGQS6vxbt/8blyMi+8M86vvVrT0XLKivUDolZpnTHrF5NXuzjLeDbND
         ez2+UI6NrB/m07zB82z8/vGo3TSlgDcUiI/v18VDa6yhK3B8IGh++lOyKvjKZnOPPiig
         RnMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVewf5zXIe4zjiWDKXtJXypV7YGE7QXaca2A2P9bWeDb7ccgc3MA0jC1uFjN6EnirKmHs2fI9K2cjo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHzPsTF7xljJ9riwcItSH+YSaO7dhOoa3xxULo9/AfDtbCvxvA
	aei+/GLsT2U9uTEJprZU86k/0rwC8EHDENnqu0L7O0duOx2v5W5xFmaOTzpMBcMNk3hQ+a0d0YH
	IihdKgZoRkbM3lsEnGPVgRdL+mkFPcksCVz6YIS6r+s1iOY359/VT7k16Alk7mjKVhjiY
X-Gm-Gg: ASbGncuBzHlTjgjanzfQt/fdr+ifc5jPp82KdCAURg8aRvoEmVwniLXwThxm5dSHqLr
	4bTRi7hRQukSpNOZRM5BC3AxFFB48vf24ACOYOMQKG+qHlDz6rmpCne/X51vnXpeDRdTeq4UZmK
	VbmhVH1tWhmBb/EF46VpmBOUuMiWQUi9Ggp0RVfEtxDrnE3UO7PPBPvipChLMvcQHL6kXyGabZX
	ih/BwrNMltDWGJo4hc6rXG9i6grjiQFrraShqHlPqR35u0r+6ewwkBZpNvVP9UnOempc9pSaHQX
	GTpRn2JMPk3ndqwW5FuBxW4pszjaJDAwj3LVJFRvos4VLSUfIlGpcNscIIo2zeegx7dkffT49KT
	c2PA35PA=
X-Received: by 2002:a05:620a:4088:b0:892:eeb9:4def with SMTP id af79cd13be357-8b5e6c851bdmr732207885a.49.1764838553579;
        Thu, 04 Dec 2025 00:55:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE3aMX7sQTlgLJAAvh6lOIQsPmJ0UfemPHarT/wW2H0vj3b2gdf96N6jbTOI/7ld+oredQsQA==
X-Received: by 2002:a05:620a:4088:b0:892:eeb9:4def with SMTP id af79cd13be357-8b5e6c851bdmr732206785a.49.1764838553028;
        Thu, 04 Dec 2025 00:55:53 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7cbe8a7bsm1979480f8f.4.2025.12.04.00.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 00:55:52 -0800 (PST)
Date: Thu, 4 Dec 2025 10:55:50 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater
 tuning parameters
Message-ID: <nkh5hmppf7wlvlxfwoneceaggodbj6mz2zuajoo2uqpg5ebxqx@mzmh3afhpnjo>
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-4-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251204044644.3072086-4-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-GUID: QZ8GZmU8mpT_9kEEmg0uqlg3RhKTp-Eg
X-Proofpoint-ORIG-GUID: QZ8GZmU8mpT_9kEEmg0uqlg3RhKTp-Eg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA3MiBTYWx0ZWRfX6UwRDs7njrlG
 GBh4KyME+xKjXfaTtoshkQVxYdC5s4cyF+FRbx9D/eYrU9E/7nHsFptEKqOMr09uv4/xmwaaeln
 ahr2ITsEZUZWrNNSOc4q555Xe+wuQ8t6wAA6A4QD3ecfbRUGbp9OKwTqfgt1kDzAqTXodeTR57B
 TzDSXv1NBHNIGruK4YsaLY6S/W4nb5JSEa19xouMCmS3Cub4ZxGDEqNrY9DHqjz/yuyNRi+eyvE
 MPgrRPSpil1p4doc/7b/bNhEhup2u7qHugVYdUj1D//8xK87kRK/KRpY016ENw20jaRKgnfcjDN
 Xt3lUvMhWeVfRufbMFWzX6oTokuOI/IPeHvuDi3qWebbPJwgPMTcrot6UkmXOVtsD4kYxPQQfdw
 anDYGAGYseWoIrggDRMlBDgllCEHfQ==
X-Authority-Analysis: v=2.4 cv=Scz6t/Ru c=1 sm=1 tr=0 ts=69314c9a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=l7HdKJapEFYTXkbJdyEA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 clxscore=1011 impostorscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_005557_311162_B7B6EE54 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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

On 25-12-04 10:16:44, Krishna Kurapati wrote:
> Add eusb2 repeater tuning parameters for MTP platform.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

LGTM.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
