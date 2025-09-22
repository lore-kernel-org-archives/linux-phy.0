Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8225BCAC592
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 08:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8ld2Jsc0eNeB8AV/1gPhthSJ7NuQMzEK1xlgJfq6Ys=; b=L+SfjhDvOpWpvY
	J933ijsMyYzKRuvGOfLuxLAby7Ate4N2x+Xn93Tg48a/ea2sDfncQhfgc1c0UkAiqBRMQfsru1Gx9
	WfkrssjCMEE6PF7UvKjSSWhFSl6G3JHc8naptUBEnhO1enWYPrnChYClQHXXyboelzedXUloihkI4
	RY+KBsyzRY27IepGeWIMx2gyZXr3V5bpvuQAcSuSyrbkua/0UzbytzYCQkIpmpXnBLYW8VDJrQl7C
	Sn22NU3WbP13+kgpVsBu2QgcrEfH2rtqRn3NRkeFIee74kGF9KNLFGBa0Uc1Wg+o6ENLnGIdt7J2x
	X4LzMrUejjYBctpyJKAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0bss-00000009hPg-0uVg;
	Mon, 22 Sep 2025 08:26:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0bsq-00000009hOb-258o
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 08:26:53 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58LLcxgk012996
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 08:26:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5eooA/d0wFv524HBbqhcxXG4N6t67PHtqPoAMp99CLM=; b=gBPOekuy/TAuLDuw
	fYHLEtqZoWeB+TuYqIynVldqPB4Chu8KEJrz1Y/nSNhuA6KVMrMWQ2WMMALQHrWG
	tod986QwqjjTGkCzy0fa+kxiXGBnjh8DweQfKaRl66G52sKinHv7tfu7RC2y5Rqz
	gp6hEqCM7QaZyXb+OaihpmJz8RupD7umBfduqMvKLonFBpPYC6XyaGR0eyctEYub
	0qiIPjB7Qz/4lElNdcKVUsRRTbJ4YZHTvQKU+nhID+XzLCuz0eGaS9049JtfUR7s
	4xFFQALX11PAjG9og+4qFjMu9eeDSQeDgJcyXmVmopS+uQHJvYZ1MkSwtYczbRyu
	sXMxHA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499mg33x1y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 08:26:52 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2696ab1bc16so11869665ad.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 01:26:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758529611; x=1759134411;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5eooA/d0wFv524HBbqhcxXG4N6t67PHtqPoAMp99CLM=;
        b=qdbNaqCqDqf//OKK+UFc5ogo7kdoPMaftihpyUnNfeAiFJN+mBdO8XhEewwMgs0Bbg
         q5B+bXI6HNkCJ/npd/TSZjgiudTuVK9F7nSApKQGzLovyF42Fs0KmdfyIA0d8TxCwWyL
         43IB2hIV7isBChDrIPQHCbEMDUy77Hivwas0aPzR83twtIHuanUjdFD0qUCDsamQpATG
         tzF70/7xw9X0b4wNPx+iildjJcFNa7l+J2PlLR3TM4JrSolAYK+hao027RqwSK1fjKup
         wl5uPONE0XFRqKdO4u6nA5n8hTCOHUPdDGdMn1b+/5nxd1TQUW7KYvJA+AzBRo6O4mYg
         Ej4w==
X-Forwarded-Encrypted: i=1; AJvYcCUVEDIVt3s8PlrG/URpTF0k1BGf841u6JjeTw8vVCiQAYwP/tRbEgNWf2daVy5WlTjRlbs6VOUYAl4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxvMB53a9UPoxg5mwCcF5a5DV7aNurOSsAgbeHQdc6oT8mDqVdG
	F4dEHD+HU0DHxy+sn+mOhrItoXEDy/fqhnDiU60Wd8eTjxViDcrnNXTUzJvn/pqQq80RmBxqWdF
	oPnqVTKfybIBr9DGo9+5/Qb6TjJlHCTMqmgdK0zx3CEIldmtWByEE4BNEfo466Z19cHd+
X-Gm-Gg: ASbGnctT8Q1BOwszmetWWE7YfTZvD+PSi+0H8B+cLBhBfZuUCg0o7QqiVX0vSbYYs5m
	+Z6TCuNR8d1/wipYTldvfN+6Rc3cJzieBXwy2OewSEibnRB0E2/iioaPRtNpRoeo3m0KVPrvMKT
	BZ2pdiMOjY2Ijhqwy8YyNDb6yQK8NbC9f667qNaL6O3J6ySf5JPefQgmDWkwbDLswoInmMtsy+s
	4sLaEVLZWTVFfPBIKENzIbw7Nbu6V3QqjrJiEyaHkvoBnObLDMs61+NvcQVrqqmoJRTJ4DyXOrW
	RxN6Um8zYDam7cwxBYZYgJTqNZilnkcDLx1m9WaL6aBEZmqbPerlkCG6cbd9FWQndZbHSpfXMq6
	bmChEcsG3ochBJd9FqYxHhlgvZl5p4CpGRw==
X-Received: by 2002:a17:902:f706:b0:276:624c:6cb with SMTP id d9443c01a7336-276624c084cmr28410455ad.2.1758529611170;
        Mon, 22 Sep 2025 01:26:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMC8JhklyE4iNEbU5+yB9CJsS1vFjF44g3zzVBlwELKRKjUfowiE8AinFLeQimo+OvsblUHg==
X-Received: by 2002:a17:902:f706:b0:276:624c:6cb with SMTP id d9443c01a7336-276624c084cmr28410225ad.2.1758529610654;
        Mon, 22 Sep 2025 01:26:50 -0700 (PDT)
Received: from [10.133.33.87] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26980053078sm125956445ad.10.2025.09.22.01.26.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 01:26:50 -0700 (PDT)
Message-ID: <d09b2b45-3ca9-4808-8ff1-72b98d6fed2e@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 16:26:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 06/14] phy: qcom: qmp-usbc: Add USB/DP switchable PHY
 clk register
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
 <20250919-add-displayport-support-for-qcs615-platform-v5-6-eae6681f4002@oss.qualcomm.com>
 <xtosrpz6rzdvtmpyq73gboeckl3c2x23iqehlxzbaszqmzugjd@ixhj25qujqxo>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <xtosrpz6rzdvtmpyq73gboeckl3c2x23iqehlxzbaszqmzugjd@ixhj25qujqxo>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzMiBTYWx0ZWRfX6R5hQBokIdES
 UXpUV9PcvpJFL7BA1h8iOpx0kKyDggzqB32C+2GuT63efA6iJql181X+I7xUjDzlaCZWtxVM0Vx
 6w9bGQJylnadc25SZZy8JfhhaJtqvCJ+obI1AQGKBGFSecJKeseDtFsd30zoqP7FmDoEd/QGq57
 ZCBiyhIVqbuz3tHUI17Pbt1Dr38fVC3Hk+sUVsCl/SMF9c7W0aqHMZRrditbKh2HImpqPfH9NGz
 EIlY4+EXrQy3HoGW/yi9jvaup/r2uTiHlQAjs+k/UyGUMyOi8tRj4uL/xS14EK5SevHBT9B9tBt
 aY1/0YCKqHirLEDWui5S62t137aTrk6X51YPi0NZwvVHbYl0LyYeFEvN8juL32QPuSoVOFd5XGa
 uB8z7EgV
X-Proofpoint-GUID: mR-eUhD-aDDG-_iVtR1uL983Oql288ek
X-Authority-Analysis: v=2.4 cv=UvtjN/wB c=1 sm=1 tr=0 ts=68d1084c cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=0ewKxBccC1tKemf2ImcA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: mR-eUhD-aDDG-_iVtR1uL983Oql288ek
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_012652_545594_2E2E9B79 
X-CRM114-Status: GOOD (  12.69  )
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


On 9/20/2025 12:46 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 19, 2025 at 10:24:23PM +0800, Xiangxu Yin wrote:
>> Add USB/DP switchable PHY clock registration and DT parsing for DP offsets.
>> Extend qmp_usbc_register_clocks and clock provider logic to support both
>> USB and DP instances.
> Why?


Shall I update commit msg as below?

"phy: qcom: qmp-usbc: add DP link and vco_div clocks for DP PHY

USB3DP PHY requires link and vco_div clocks when operating in DP mode.
Extend qmp_usbc_register_clocks and the clock provider logic to register
these clocks along with the existing pipe clock, to support both USB and
DP configurations."


>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 210 ++++++++++++++++++++++++++++++-
>>  1 file changed, 204 insertions(+), 6 deletions(-)
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
