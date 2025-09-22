Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 253F5CAC5AD
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 10:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qmv9KFI7SYv5YoUB6fz9pYmdxIIUcE1S8nK9by6NGOI=; b=MEzPBgathN2J9l
	CSn2GKZDK4HhTbQt0hnUe/p12MJQcvSX5BrpeiFcrTNyFaX+cBYa5MwfGDVAeJrDkqV91+14VJEgw
	cOc2gRLcKuqrmfPtPK9UoY5dZqUZqASO2Gxz6jogVbFKNDmf33YGCatCi7mDKqxS0Ctb14Q0aJLyL
	JV5JBW3BXG0mLVSGKqMK9BrIBvUy0OzqCI7OgiSTbW1Q/samvIhn4gkSvc6nE/3cvdnWa5M8CxwIK
	SLSf/uk/Q+xfWSaC7hSRznJaf+I3QfYTT3HxEaLD3L6M3C+Zqwj5T+8D0feG58p9Rjoa+LTP5lzSG
	m2RYlssAsjjHxQosB/7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0dxe-0000000A5P3-3pAL;
	Mon, 22 Sep 2025 10:39:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0dxd-0000000A5O5-0AQl
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 10:39:58 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M8usXh027441
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 10:39:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S/sA8nAMeAFMELZqIPjuLjJ4XtaKTMC4EnJ3WDadUqo=; b=kaREty9VXGeciDLI
	tCvv1KCyLhUfKm/djj2m4hnm9nMrsHRkwQzZgWImpLtgW00/4d39/gq+ziey5ral
	QSHeBxAucErWvK23cbWyWyvXCLMWdjufjUHvB0bGfHWcY2QaLk6QCTi3ReNYrTiR
	DJkmfa100TLfOC5xs5R+m3qOmLXAg6RfKqWRo3LlUGS3Q8ixL6C4tdba4NLLFS4v
	0yffZl8J5fGt178CwkdUL2tJpUwed5Y+/wAuOWw2sDaS+lrtPHx0tZuum52E3MIQ
	S8ih2sgoJweK4CzFWVrznjiSBOOB/l60gbOu2vx5X2mUhz286H1xsFLitauhQMg5
	2AMvNw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499mg34dtm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 10:39:56 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b5546169b7aso37777a12.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 03:39:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758537596; x=1759142396;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S/sA8nAMeAFMELZqIPjuLjJ4XtaKTMC4EnJ3WDadUqo=;
        b=EqYWUmxhPvyo/2qs01ArPurVJ2aG0ZPbrhJDz8ybDu+Y8OmpoaBQ3dZf9u88y174zu
         fhpEL4bVtgU0eOsD8z7ZpsM7CfRvB5NoMbE9Gu4+Rm6uOWUC4vCXbIkOJp3u3ktcxYLL
         yARyBVGRcPFdfq4FaLK4njt0bIoA2eB3ipD6UGN0v2goGfEGLqgL8p12iX3dmeu7dhxV
         USt64S/QKJnwUVWbHAySQAgi0ak7JUxCiiWuvn5G19BPnLc8z0cBussQoxDAprDQBvzC
         G/JY3sVY6aZPf5CdTjUDJQyNWnieP4Qi1fFu+vz8JFpsHN2lpOoy5d+CGddxpkz+/X3t
         cTdg==
X-Forwarded-Encrypted: i=1; AJvYcCWlfiwPp0z+e8rhpVqg7z5x6rwpnemBenNYvgotTo4usgyToMhqNTYuC57SHFjHSUeMAcFaDi2uGaQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxVt2UQLNh2pkrPzF0hki4QVPN6Zn0s73PXQvVm92NesuCRdteq
	Eit9uqs6yblfU9uDu3M+0chR3IkUppcXHJ5fxoWXwdc73/IYoDg5bk359sRKArJy18KchtBFp1k
	L9rQ9KKrJRxmW2EE9+KC2SnKioOt4Qrdw/8o0o6Rfmei+WekChw5CnW71Ic44wsYUGrvO
X-Gm-Gg: ASbGncvaTq9bOLypHGZwi6sTQmKdj9GBlE/Bof1iJV/ZZ4JpaSH2hgzpIKz8qCYl9Wj
	ZltNi/EDgehov16KI/4EW+ZTwnAHelQ6T537ad+pJP8kztVyPxfwqzFuLOVu6xYrrbxmJcydOC1
	0tx2zhzF5kfq4PPf1t+DRlE/n39Hc2h+3s7E+hxbT0c0dkrrwGUo9ykqxrWGbHMnS46/G/2JFHX
	cJbEaA5VzIFhUoFqRV9JvZ61GuaVYnOR2lCL3oeAIOIeU0k/cLwRMN9FLzUlBMboJDGpFF4tVkf
	P7EueuBPl51yGRJ1lBAUO0QihWImdt2frvq/0tdZu+1lnELM15pCTkO/QQpDi5p7gQ==
X-Received: by 2002:a05:6a00:1894:b0:77f:1a6a:e72b with SMTP id d2e1a72fcca58-77f3126ad87mr2512339b3a.5.1758537595660;
        Mon, 22 Sep 2025 03:39:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzeuarlsbMfcKnTGM+3OHSIOvq4mUD5eYqtObyzudC9HyNv9RqGfR6ipfD9BvwEsV1pOsHsw==
X-Received: by 2002:a05:6a00:1894:b0:77f:1a6a:e72b with SMTP id d2e1a72fcca58-77f3126ad87mr2512307b3a.5.1758537595213;
        Mon, 22 Sep 2025 03:39:55 -0700 (PDT)
Received: from [10.64.16.135] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cfc2473d0sm12066251b3a.27.2025.09.22.03.39.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 03:39:54 -0700 (PDT)
Message-ID: <bf823249-18e3-48af-a291-63b89bf83163@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 18:39:47 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
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
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
 <z6x3bwb7izywozeran5aq64uw4tiwlbwx4kekoy3vv3vt7qyip@2ibiat5focw2>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <z6x3bwb7izywozeran5aq64uw4tiwlbwx4kekoy3vv3vt7qyip@2ibiat5focw2>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzMiBTYWx0ZWRfX2b9hjJYFpPVN
 wdOKqBkCQXJnIB+RnjBnpegteOojDKP0H5W78GIBy0CrIebZCzaaqEgR7Ev5+SLSAZB+R9jNKNI
 uPf5Z+BpnJ9Z0wE5IZufK+W5HAiyOunGxHyghTe7f4uGpWOcFRZifuNWHqeaW2dkJv/r/o621KD
 4OxaSmv5vJQLY7il5eN8AOWzXlbmUgQAMKYtFWKpH1h1HrYE+hT4Atlt1dXPeeL8js+Tq+zVjn7
 OKO6pSERcNV0hLqHYcNlkUbo9SZnup9MX/3Ond2PetRks2bkUGoSVHAAMcqW8QLF5mWxk9w11Kx
 qovZ5pxc8qsGym2HZQgW+1Da73sur+oR0gC6K11HSu15/U+cononixluti2tBTkioemKRWukn+J
 O4xwJ6MW
X-Proofpoint-GUID: VYYm0GdpE9BhgBjbIna8G3Xo5Vpy6QfB
X-Authority-Analysis: v=2.4 cv=UvtjN/wB c=1 sm=1 tr=0 ts=68d1277c cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=kiRbvkIhkhXhhATYQ8oA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: VYYm0GdpE9BhgBjbIna8G3Xo5Vpy6QfB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_033957_113220_56FE72B8 
X-CRM114-Status: GOOD (  18.13  )
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


On 9/22/2025 5:39 PM, Dmitry Baryshkov wrote:
> On Fri, Sep 19, 2025 at 10:24:22PM +0800, Xiangxu Yin wrote:
>> Move resets to qmp_phy_cfg for per-PHY customization. Keep legacy DT
>> path on the old hardcoded list; non-legacy path uses cfg->reset_list.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 18 +++++++++++++++---
>>  1 file changed, 15 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> index 3b48c69f9c3cb7daec495ebc281b83fe34e56881..3d228db9ef0882eb76e7ab9e82f8122fa9cfe314 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> @@ -335,7 +335,8 @@ struct qmp_phy_cfg {
>>  	int (*configure_dp_phy)(struct qmp_usbc *qmp);
>>  	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
>>  
>> -	/* regulators to be requested */
>> +	const char * const *reset_list;
>> +	int num_resets;
>>  	const struct regulator_bulk_data *vreg_list;
>>  	int num_vregs;
>>  
>> @@ -428,6 +429,10 @@ static const char * const usb3phy_reset_l[] = {
>>  	"phy_phy", "phy",
>>  };
>>  
>> +static const char * const usb3dpphy_reset_l[] = {
>> +	"phy_phy", "dp_phy",
>> +};
> This is unused in this patch. It should go to the patch adding QCS615 DP
> PHY compatible and the rest of the config data.


Ok, will move in next patch.


>> +
>>  static const struct regulator_bulk_data qmp_phy_msm8998_vreg_l[] = {
>>  	{ .supply = "vdda-phy", .init_load_uA = 68600 },
>>  	{ .supply = "vdda-pll", .init_load_uA = 14200 },
>> @@ -464,6 +469,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
>>  	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
>>  	.pcs_tbl                = msm8998_usb3_pcs_tbl,
>>  	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
>> +	.reset_list		= usb3phy_reset_l,
>> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>>  	.vreg_list              = qmp_phy_msm8998_vreg_l,
>>  	.num_vregs              = ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
>>  	.regs                   = qmp_v3_usb3phy_regs_layout,
>> @@ -480,6 +487,8 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
>>  	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
>>  	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
>>  	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
>> +	.reset_list		= usb3phy_reset_l,
>> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>>  	.vreg_list		= qmp_phy_sm2290_vreg_l,
>>  	.num_vregs		= ARRAY_SIZE(qmp_phy_sm2290_vreg_l),
>>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
>> @@ -496,6 +505,8 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
>>  	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
>>  	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
>>  	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
>> +	.reset_list		= usb3phy_reset_l,
>> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>>  	.vreg_list		= qmp_phy_msm8998_vreg_l,
>>  	.num_vregs		= ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
>>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
>> @@ -512,6 +523,8 @@ static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
>>  	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
>>  	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
>>  	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
>> +	.reset_list		= usb3phy_reset_l,
>> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>>  	.vreg_list		= qmp_phy_qcs615_vreg_l,
>>  	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
>>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
>> @@ -1051,8 +1064,7 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
>>  				     "failed to get pipe clock\n");
>>  	}
>>  
>> -	ret = qmp_usbc_reset_init(qmp, usb3phy_reset_l,
>> -				 ARRAY_SIZE(usb3phy_reset_l));
>> +	ret = qmp_usbc_reset_init(qmp, cfg->reset_list, cfg->num_resets);
>>  	if (ret)
>>  		return ret;
>>  
>>
>> -- 
>> 2.34.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
