Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FCF1C624DE
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 07:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZ8nxmYE4fFNzq71CjcJdLxqNYppp2/Ry20XfYhpsvU=; b=cV2pPguAGOXXe5
	bVcRFfOlDCqdnaDzuNR08GEwFKVZEI6/KF6GYmMB6ipsXYOwS52uK50szXtSlsuVu2aHC+EZ+HdRK
	BPc5s2onptCmXdc6Xr2ArWcjvt8MrbF55FjwB27xcKLQVQsjOqP2e2yeIuxBMbdSSGCxbYovYq4ni
	gpUOoAeNQO6577MVZ8LJW9lfIZoOopR8I4o+OeIwM5yCJS+NI1vOpizl7wlzMtYHwntKo99e1zfbx
	FVkGmX6zb5D8frmqdnkCas+MuxhR6oBwXZ7L/fw2JjNipQJ+9nPqeCjayFJPTmnKczEuILd2/gqwn
	0arg7gOc/VmnJ9e6ohAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2OT7-00000001FYM-0g9A;
	Fri, 04 Sep 2026 07:36:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2OT4-00000001FXn-2Sj1
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 07:36:11 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68462bPe3498881
	for <linux-phy@lists.infradead.org>; Fri, 4 Sep 2026 07:36:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	el9/GWun7bF9QXuvqr37ACTgJVtX0bMsJv7LmsaRm3E=; b=HtOsyqsxEw+hnDBy
	EZaLbTbqSbz6p0qdBQ6t2ehmmyGHnMIfcFlf+4Jr1mFoGC/MxtVObGoCAOp926gq
	45ONSPtQhBmnUyVRcZLP6uxkxZuFAREsnsjMDp+nu9YAAE3eiTWjZ/K4J7BxK6SJ
	d3T9DBekIbD5v7Q6OOEzSlV2gh228RVQsitTkEy0Y1viaSWboc4fZcYEDpdHcqVJ
	rzyfLPjutnGOqpr3MhZQ/anwp87exOc1Oex14vizp5rDUs/z0cDGAt+ZHBhCOFM/
	j8IyCJMn843YEzRTJT4t9PnDQaLulOSXkWnbmmtFegmt9lvBb1BEAA3xXL8oVcte
	QXjbyw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gfbyvkbwu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 07:36:09 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-52b4e315000so2750961cf.1
        for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 00:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788507369; x=1789112169; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=el9/GWun7bF9QXuvqr37ACTgJVtX0bMsJv7LmsaRm3E=;
        b=G7leLHZx6n4wf6lAlgb122PkEXb4kuerRsHITmgEGDYj8mLEvBiG+udym4YpBiTrdb
         MciMqpcgauWEZGCuOwE5qeCc4fXuResCt5gaDcg2AEqz0jK3uJFz0UJZ4ZOv7R43Vlx9
         HxaJhrSl9E2FGJBOihmJBfVHosp0Vz3rYCl0cZd4MKmzF13Pak3EqdG5lFg9+d651pKt
         TEKZeGRyTx867x8+zdjHYu496pJB6rOzbNLzhKzoOvNN/yKtIANmjjfCJVYVV4ra6JYE
         KTjkRkXa80e6iyABIaI1Jyhvf3IpXCCwudX6H9ziZyPT4LRmCK9aUKu9LCtIgcWVFkhI
         NPhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788507369; x=1789112169;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=el9/GWun7bF9QXuvqr37ACTgJVtX0bMsJv7LmsaRm3E=;
        b=JFudQrdgvgRb7OhnMA1icROy2gMXj8NM6h/0baZa7N6Jgbr7mu9WrP5wmQ1yNAH8wu
         kXxoIUsW/28N/mBzGslu5m7caE0PvP+2N3lxdpc+69Q4BKhheYOwmThxX81pX5qfxXQG
         7Ux1CVqFTgjUDdmpiRzlgwKWGqQZgVVO4G9TnZraJxomKcnzIYxP+bfC/49uJQ0/qcfV
         +BlJ6Je3kDFa2GmlJVFkgxVxB4BtO6KreNOsNpyrSycjbrpFTnqlZfrVugkyKRDoKUJM
         edlo3En1lHXZf5RFJTiqIJR6pKB6AX7vywdyjKqTKRdPYne8fpsy+VLZ1BgIXoKA6cwq
         3bZg==
X-Forwarded-Encrypted: i=1; AKwUvByyATXpXCTv+uo0KGap8QNbP9mNeEnkvkDOdCYLy3v6L5+S6xIyAJgr1VxEBbQqK+TV4kAZhNAELc8=@lists.infradead.org
X-Gm-Message-State: AFuF++lLWGIMfry7BCOzfwnT3tpVyf71uojqqCXqUNyknWGzN/cJXATl
	1vLn1OUXkNz22oTY277EkFfXDTUab7rcaFJTCmlymIVriWsOfSXUkLNqeudNdexzetSgWv8x/1p
	XenahTmVkRxtFhMTvCfNmkaPc8uXxZzVdKuaZrEC2MBdNIqUh1AvL/HcwqxC6bYhT5qGd
X-Gm-Gg: AYBFou33ebAX+X5q+h+0iwS0ykENgEdbiUXt35id9bn9DWF11DxrOyjjpsrvCoz/m34
	J7NBEa0e2PiLYrB6jJ1HG6Ibl8SKZvzeGH44+uMpg277kQCPT98TucgLBHdAu7lewfIl7js9IZw
	5vI1VhbU7oWpYANL6KbXdmD7dqiQMqRFm32+0izYz5uJQIxbwkhsQErqurqilbWZfX/DsLrPPqV
	FYWfJ/2unTtK1rC4zNT37Mt4DWW3R7J1srzOTwrqGUt6qNYeMiBq54uH1Et3Csw6oLyZAYkqa8M
	ujcRU60Lsn20o7nUWkrolfN4AQX6W3udEWMi8AU2oA9AmbDUGRtLQxqztt7Nf5bwAf0jRK8mZpl
	QyRsgWWw9JDFh2UYfmOLrUg==
X-Received: by 2002:a05:622a:180c:b0:530:4156:8ad4 with SMTP id d75a77b69052e-5305613abe4mr24270451cf.1.1788507368670;
        Fri, 04 Sep 2026 00:36:08 -0700 (PDT)
X-Received: by 2002:a05:622a:180c:b0:530:4156:8ad4 with SMTP id d75a77b69052e-5305613abe4mr24270211cf.1.1788507368196;
        Fri, 04 Sep 2026 00:36:08 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a7e66eb790sm858631a12.3.2026.09.04.00.36.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2026 00:36:07 -0700 (PDT)
Message-ID: <b326edbf-fe34-426b-af19-912edc18ba84@oss.qualcomm.com>
Date: Fri, 4 Sep 2026 09:36:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] phy: qualcomm: qmp-combo: Add preliminary USB4
 support
To: Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260820-topic-usb4phy-v4-0-aec9d2cb31f6@oss.qualcomm.com>
 <20260820-topic-usb4phy-v4-3-aec9d2cb31f6@oss.qualcomm.com>
 <iynrogny3didip7cui3ce3yq3woaqzrr7f4aqdzvls4j4mslfn@aww5qjpy3gdx>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <iynrogny3didip7cui3ce3yq3woaqzrr7f4aqdzvls4j4mslfn@aww5qjpy3gdx>
X-Proofpoint-ORIG-GUID: YQNCqOo6h7U8hryN7GMsQ4znwA0dN4an
X-Proofpoint-GUID: YQNCqOo6h7U8hryN7GMsQ4znwA0dN4an
X-Authority-Analysis: v=2.4 cv=C8vZDwP+ c=1 sm=1 tr=0 ts=6a9a74e9 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=3yxzJo-rEr3QGlafRVMA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA0MDA2OCBTYWx0ZWRfX6SnVn15P1X+p
 fRgx1rudt1U2HvguOJSTQTcQ1AqJGAzbjDCvNUpo3rOtClkXPdFkPose3qQwrnUiS3CLS5+S6PQ
 xUN9awLtEGX+fzL2cpY6v27Pzp4YRR5OnWbcjNxAF1WRFg4GzawQTKcrgQl3klmHCYRhoqKoOt5
 b5XATWE9OgXXA/x6lRGG/36kiw1aKOcj4aPMiQ/AVOj4yreSq9U1Q0YhV6NVL+uai6A5LA7+mg9
 66AFkhC8r9ZdYsZI7hLbVJTthugc4GpAQanjeRmfjUg14iwnsNJUal4y0iT/O41Iemfm7/LLxxi
 Oz8ZZCFU3FPBsLywx7aaQhQKTnORfgV6FtzAJLGbWiEEHp1AcwqXIrvgxJFqb7uA1cCsmhfzDeY
 Nm6nbI7xFrm8lia1GlTzb69+8Fxeah+AHY1ETvOwZqx+WfUrMM4msrxBDwkKKWWmCXRz0IMjBSw
 41mlT2rNtHOt7ncovoQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA0MDA2OCBTYWx0ZWRfXxsyyVB7mpjqX
 Gi2qctHEBBmKNTKXLUoADAnE4l7PqdbmI3Gv0bmPB9X9sPzgxxFMa1EF3vUeTWJzx4qoqeVv0Uv
 4OmoyiQwVZlo9EtVrrL1E78nHyXqo9c=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-04_02,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609040068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_003610_638513_DF0444DD 
X-CRM114-Status: GOOD (  13.33  )
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

On 9/1/26 2:44 PM, Manivannan Sadhasivam wrote:
> On Thu, Aug 20, 2026 at 04:24:12PM +0200, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Some Combo PHYs (so far only on SC8280XP, X1E80100 and Glymur), come in
>> a flavor called USB43DP, which as the name implies, features USB4, USB3
>> and DP signal processing capabilities. In that architecture, USB3 and
>> USB4 PHYs share the same USB_PLL while featuring separate logic spaces.
>> The DP part is roughly the same as on the instances without USB4.

[...]

>> +	case QMPPHY_MODE_USB4:
>> +		writel(USB4_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>> +
>> +		/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
>> +		/* TODO: disable DP PLL if there are no active tunnels after router setup */
> 
> 100 column width generally applies to code, not comments. Comments should still
> be wrapped to 80 columns.

I believe this isn't a real concern.. checkpatch certainly doesn't care:

# LONG_LINE_COMMENT     a comment starts before but extends beyond $max_line_length
# LONG_LINE_STRING      a string starts before but extends beyond $max_line_length
# LONG_LINE             all other lines longer than $max_line_length

(all take the same value, preset to 100 at the top of the file)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
